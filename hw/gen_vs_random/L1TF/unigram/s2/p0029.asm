.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, -71
xchg bl, cl
sbb rax, 717206440
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 100
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and dl, -98
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
neg bx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
mov dil, dil
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
add bl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sub ecx, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
