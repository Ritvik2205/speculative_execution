.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and bx, 8
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or al, -61
xor bl, dl
test sil, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or al, cl
test al, dl
or rdi, -11
xor bx, 38
xor sil, -15
or si, -12
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
