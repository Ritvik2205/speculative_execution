.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
cmovno rcx, rdi
test edi, edx
bt cx, 87
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
add al, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 26
lea eax, qword ptr [rcx]
lea di, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
xor dl, 78
cmovl eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
