.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovp rcx, qword ptr [r14 + rax] 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl rbx, qword ptr [r14 + rbx] 
cmp dl, 64 
and rbx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rbx], -104 
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
lfence
bts qword ptr [r14 + rax], rdx 
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb qword ptr [r14 + rcx], rcx 
lea rdx, qword ptr [rsi] 
xor bl, -116 
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi 
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rsi], -45 
and rcx, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rcx], 3 
and rdx, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rdx] 
xchg dl, cl 
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax 
inc cx 
and rdx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdx], dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
