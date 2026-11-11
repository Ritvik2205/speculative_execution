.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -26
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
or bl, dil
setnz al
lea cx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
neg dl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 14
lea di, qword ptr [rdx + rsi + 90]
or sil, -44
mov eax, 10
sub rax, 1715032616
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
