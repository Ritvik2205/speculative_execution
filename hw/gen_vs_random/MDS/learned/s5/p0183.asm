.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and bx, 93
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and dl, dl
or dil, bl
or dil, -78
and cl, cl
and rdx, 68
and sil, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test ecx, -1843375753
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
