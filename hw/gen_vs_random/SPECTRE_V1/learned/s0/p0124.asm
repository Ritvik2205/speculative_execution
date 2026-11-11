.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 92
cmovnbe rbx, rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
imul cl
or al, al
sub al, 10
cmp rax, 78
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
cmovo esi, edx
lea dx, qword ptr [rcx + rax + 90]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
