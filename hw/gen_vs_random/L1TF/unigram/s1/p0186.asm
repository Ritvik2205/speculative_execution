.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
setnb al
setnbe cl
btr ebx, 52
xor rcx, 80
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
add bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 26
xchg ecx, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], 89
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
or si, 0b1000000000000000 # instrumentation
bsf di, si
adc rdx, rdx
lea rdi, qword ptr [rax]
sub si, 30
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
