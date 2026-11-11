.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
btc di, 164
and rcx, -63
xor rax, -1128378406
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and cl, bl
or cx, 49
and sil, bl
and dl, dl
jmp .bb_0.1
.bb_0.1:
xor dil, al
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
