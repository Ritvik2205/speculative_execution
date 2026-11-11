.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 51
lea ax, qword ptr [rbx + rdi + 5]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 74
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
movzx ebx, dil
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 23
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
