.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
cmovs dx, cx
or rax, -1571963467
cmovle dx, cx
lea rbx, qword ptr [rdx + rsi + 34562]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
or di, -85
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bt rcx, rsi
jmp .bb_0.2
.bb_0.2:
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdx]
cmovbe rsi, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
