.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
bts rsi, rcx
or dil, al
xor al, 122
or sil, dil
and sil, -9
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or rdi, 21
test cl, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and al, al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or di, 48
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
