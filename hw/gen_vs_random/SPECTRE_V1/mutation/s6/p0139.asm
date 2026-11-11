.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
cmovle dx, cx
cmovs dx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
or rax, -3
lea rbx, qword ptr [rdx + rsi + 34562]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax]
or di, -85
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
