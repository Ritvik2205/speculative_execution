.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -72 # instrumentation
cmovp eax, eax
and sil, sil
and dl, dl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 61
lea rax, qword ptr [rax + rdi + 84]
dec ebx
jmp .bb_0.1
.bb_0.1:
add dl, -40 # instrumentation
sbb rdx, 54
cmovnz rbx, rcx
cmovnb edx, ebx
add dl, -8 # instrumentation
lea edx, qword ptr [rbx]
test rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
add al, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
sub edi, eax
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
