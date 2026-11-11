.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor dil, sil
btc di, 164
test al, dil
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
