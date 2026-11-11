.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
test al, 84
add dil, -75
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
adc al, sil
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test bl, -8
mov al, sil
lea rax, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
