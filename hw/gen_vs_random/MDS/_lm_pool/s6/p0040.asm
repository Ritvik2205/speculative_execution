.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
xor al, 122
and ax, -10351
jmp .bb_0.1
.bb_0.1:
bts rcx, 74
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
btr bx, dx
and sil, sil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or sil, -78
bt bx, dx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
