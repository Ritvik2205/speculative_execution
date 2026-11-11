.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 30524
or dil, -78
xor dil, 8
and dil, -62
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and ax, -16061
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and eax, 461212071
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and ax, 31082
jmp .bb_0.1
.bb_0.1:
not cl
xor eax, 571592471
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
