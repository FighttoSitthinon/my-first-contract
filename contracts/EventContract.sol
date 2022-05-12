pragma solidity >=0.4.21 <0.9.0;

contract EventContract {
    uint256 public event_id = 0;

    struct anEvent {
        string name;
        string description;
        address eventOwner;
    }

    mapping(uint256 => anEvent) public events; // mapping น่าจะประมาณ dictionary มั้งนะ

    function createNewEvent(string memory _name, string memory _description ) public returns (uint256) {
        uint256 eid = event_id++;
        events[eid].name = _name;
        events[eid].description = _description;
        events[eid].eventOwner = msg.sender;
        return eid;
    }

    function getEventCount() public view returns(uint256){
        return event_id;
    }

    function getEventInformation(uint256 eventId) public view returns (string memory, string memory, address) {
        anEvent memory targetEvent = events[eventId];

        return (targetEvent.name, targetEvent.description, targetEvent.eventOwner);
    }
}