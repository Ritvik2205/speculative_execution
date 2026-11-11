.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rdx + 43294]
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
xor cl, dil
setnle cl
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
