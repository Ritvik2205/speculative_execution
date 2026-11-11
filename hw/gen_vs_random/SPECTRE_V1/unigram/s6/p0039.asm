.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
add cl, -51 # instrumentation
cmovl eax, edi
cmovnbe dx, ax
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
or rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rax]
lea rbx, qword ptr [rdx + rbx]
and edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
