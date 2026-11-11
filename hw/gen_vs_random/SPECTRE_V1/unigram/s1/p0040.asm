.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ax, di
btr rcx, 195
bts bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
cmp esi, 37
not di
test cl, -33
neg eax
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
test rcx, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
