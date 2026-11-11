.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or sil, -78
and di, 99
bts ecx, 184
test rax, 337705873
jmp .bb_0.1
.bb_0.1:
test sil, -96
and sil, -69
and ax, 13090
xor al, 8
and cl, -71
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
