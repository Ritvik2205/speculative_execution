.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add al, 12 # instrumentation
lea rcx, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
sub dx, 34
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
lea rcx, qword ptr [rdx]
sub dl, 105
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
cmovnp ax, cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
test rcx, 87
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
