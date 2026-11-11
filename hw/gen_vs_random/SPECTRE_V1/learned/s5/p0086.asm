.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 20
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sub dl, -12
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
test al, -71
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
