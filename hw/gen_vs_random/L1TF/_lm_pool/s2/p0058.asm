.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
inc bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
test bl, 45
xor dl, al
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and sil, 93
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
or edx, 45
lea esi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
or dl, 8
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
