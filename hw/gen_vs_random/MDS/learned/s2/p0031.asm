.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
and rax, 1886208862
or sil, dil
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
or al, -24
test dil, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
jmp .bb_0.1
.bb_0.1:
or sil, cl
test sil, -55
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
