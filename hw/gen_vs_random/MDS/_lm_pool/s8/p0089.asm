.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
jmp .bb_0.1
.bb_0.1:
test cl, sil
xor eax, -885380838
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test al, bl
jmp .bb_0.2
.bb_0.2:
test ebx, -961564216
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and sil, sil
and cx, -8
and dx, 60
and al, dl
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
