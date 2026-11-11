.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 21
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 71
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
or dx, 55
xor cl, 89
add dil, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
add al, cl
sub dl, -78
jmp .bb_0.2
.bb_0.2:
test eax, esi
lea rdx, qword ptr [rax + rsi + 83]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 89
bts cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
