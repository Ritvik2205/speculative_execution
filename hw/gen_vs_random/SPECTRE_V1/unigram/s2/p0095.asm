.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi + rbx]
xchg cl, al
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
sub al, dil
add cl, -56 # instrumentation
sbb rcx, 97
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
cmovp bx, di
xor dil, dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
setnb cl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and al, al
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
bt rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
