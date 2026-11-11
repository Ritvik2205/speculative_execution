.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rdx, rsi
imul al
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
setnle dil
lea cx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 75
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
