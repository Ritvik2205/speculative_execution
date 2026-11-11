.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovle si, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or ecx, 37
test esi, 1857129931
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
test al, -81
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and ax, -4410
not dil
xor dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
