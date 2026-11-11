.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
adc al, al
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnl esi, eax
add ebx, -47
cmp dx, di
lea rax, qword ptr [rcx + rax]
cmovno bx, cx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
