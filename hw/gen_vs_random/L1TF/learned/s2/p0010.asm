.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, 645518295
neg rsi
adc al, 70
cmp ax, -4865
add edx, 56
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and al, -68
xor bl, al
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
