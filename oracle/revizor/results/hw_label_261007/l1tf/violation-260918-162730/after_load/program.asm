.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx] 
lfence
cmp dl, 64 
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104 
lfence
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx 
lfence
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx 
lfence
lea rdx, qword ptr [rsi] 
xor bl, -116 
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi 
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45 
lfence
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3 
lfence
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx] 
lfence
xchg dl, cl 
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax 
inc cx 
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
