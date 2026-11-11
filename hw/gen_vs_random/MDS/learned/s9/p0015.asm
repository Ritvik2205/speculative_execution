.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
or dil, cl
or al, 74
bt bx, ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
xor ebx, 75
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor sil, -14
bt ax, dx
jmp .bb_0.2
.bb_0.2:
test eax, 1838539683
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
