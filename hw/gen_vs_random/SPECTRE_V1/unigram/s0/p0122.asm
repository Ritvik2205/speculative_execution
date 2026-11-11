.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, si, 123
imul ebx, eax, 56
and rbx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
add dl, 38 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rbx
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
neg rbx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 96
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
btc edi, 92
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
