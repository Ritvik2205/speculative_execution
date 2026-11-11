.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
mov rdx, 3189408690989687296
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 19
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
dec si
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
add al, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
sub al, dil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
