.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, bx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
sub dil, cl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and sil, sil
and dl, dl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 33
lea rax, qword ptr [rax + rdi + 23]
dec ebx
add dl, -40 # instrumentation
sbb rdx, 55
cmovnz rbx, rax
cmovnb edx, ebx
add dl, -8 # instrumentation
lea edx, qword ptr [rbx]
test rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
