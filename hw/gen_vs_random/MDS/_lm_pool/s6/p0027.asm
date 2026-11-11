.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor al, cl
test cl, dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor dil, sil
jmp .bb_0.1
.bb_0.1:
test bl, dl
test dil, 46
test rax, -359674714
and al, dl
btr si, ax
or ax, -20176
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor dl, 34
and rax, -636362975
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
