.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test al, dl
or sil, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test dil, 46
or ecx, 12
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test cl, cl
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
