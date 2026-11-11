.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
or bl, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
test dil, -80
and al, -54
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test sil, bl
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and eax, -829294476
and cl, -111
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
