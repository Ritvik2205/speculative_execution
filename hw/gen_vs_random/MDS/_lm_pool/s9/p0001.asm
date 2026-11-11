.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or dl, bl
test cl, dl
xor bl, cl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, sil
test di, 85
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, -63
and di, 99
test dl, cl
xor sil, 110
jmp .bb_0.2
.bb_0.2:
and eax, -85386306
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
