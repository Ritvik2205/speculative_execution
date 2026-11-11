.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
cmp edx, 44
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 71
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -99
sbb ecx, 50
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
test bl, -8
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
