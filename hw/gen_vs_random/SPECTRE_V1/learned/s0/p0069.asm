.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
add bl, bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
xor dil, al
neg rdx
test bl, -8
mov dl, sil
test rax, 1469613902
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
