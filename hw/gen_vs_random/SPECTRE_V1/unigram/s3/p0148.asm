.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dil
add cl, -119 # instrumentation
adc cl, sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
xor edx, 76
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
lea rcx, qword ptr [rdx + rsi]
sub al, -1
add al, sil
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 65
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
