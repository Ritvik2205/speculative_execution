.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
or dil, bl
or al, bl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
not bl
jmp .bb_0.2
.bb_0.2:
or bl, -54
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test dil, dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
