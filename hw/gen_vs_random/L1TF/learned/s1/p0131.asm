.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
sbb al, bl
lea ax, qword ptr [rbx + rcx + 1]
or cl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
test dl, -37
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 50
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
