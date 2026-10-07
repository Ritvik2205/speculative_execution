.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovp rcx, qword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl rbx, qword ptr [r14 + rbx] 
lfence
cmp dl, 64 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rbx], -104 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
bts qword ptr [r14 + rax], rdx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb qword ptr [r14 + rcx], rcx 
lfence
lea rdx, qword ptr [rsi] 
lfence
xor bl, -116 
lfence
or rsi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rax, rsi 
lfence
add al, 118 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rsi], -45 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rcx], 3 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rdx] 
lfence
xchg dl, cl 
lfence
or rax, 0b1000 # instrumentation
lfence
and al, 0b11111000 # instrumentation
lfence
and rdx, 0b11 # instrumentation
lfence
idiv rax 
lfence
inc cx 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdx], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
