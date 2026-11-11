.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and al, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or bl, dl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or bl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
