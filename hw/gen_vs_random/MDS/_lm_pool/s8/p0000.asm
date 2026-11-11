.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and bl, cl
and cx, -2
or dl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and dil, -62
xor ax, -16696
not cl
xor sil, -46
and sil, al
btr ax, di
and di, 99
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rcx
jmp .bb_0.3
.bb_0.3:
xor al, bl
xor dil, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
