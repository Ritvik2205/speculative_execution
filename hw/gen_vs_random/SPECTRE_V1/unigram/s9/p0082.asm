.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rbx, rsi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
xor rax, 376589024
lea eax, qword ptr [rdx + rsi + 34]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 8
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
lea ebx, qword ptr [rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
cmp rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 89
lea ecx, qword ptr [rbx + rdi]
setp al
lea esi, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
