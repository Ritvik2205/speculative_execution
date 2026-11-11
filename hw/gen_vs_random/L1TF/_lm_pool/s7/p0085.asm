.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
bt edi, edx
test al, -70
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
add eax, 109
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
