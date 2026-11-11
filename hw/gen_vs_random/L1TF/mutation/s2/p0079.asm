.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
xor ebx, -81
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
mul rdx
btc bx, 173
test al, 15
sbb ebx, edx
bts ecx, 164
movzx edx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
