.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, bx
not cl
test sil, bl
btr edx, edi
test rbx, 76
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
not al
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
test bl, dl
test dil, dl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or sil, -78
and ax, -122
xor dil, -70
test bx, 25542
xor dil, 8
and al, -8
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
