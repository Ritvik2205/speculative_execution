.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -61
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
sbb rax, 1183957102
and bl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
adc al, bl
adc bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
