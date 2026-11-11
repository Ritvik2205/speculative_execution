.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and al, -68
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
xor bl, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
