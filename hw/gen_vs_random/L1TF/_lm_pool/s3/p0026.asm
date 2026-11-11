.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 74
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
test dil, -126
cmp al, 27
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rdx + rax + 58]
sub al, 26
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
