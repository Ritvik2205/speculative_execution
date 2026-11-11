.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sbb eax, 1332762061
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sbb ebx, 6
sub sil, dl
lea cx, qword ptr [rdi + rbx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
