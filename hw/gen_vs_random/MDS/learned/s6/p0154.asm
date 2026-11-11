.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 54
test al, dil
or sil, cl
and ax, 29207
test al, 91
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor cl, al
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
or sil, bl
and sil, -69
xor dl, sil
test edx, -372470678
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
