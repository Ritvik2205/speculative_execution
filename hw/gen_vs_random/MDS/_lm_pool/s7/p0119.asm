.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
xor si, 91
and sil, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor rax, -1128378406
cmovnp rdx, rdi
and rax, rsi
jmp .bb_0.1
.bb_0.1:
or al, 54
jmp .bb_0.2
.bb_0.2:
or al, 37
btr cx, di
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or bl, sil
jmp .bb_0.5
.bb_0.5:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test ax, -31596
xor dl, dil
btr edi, 221
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
