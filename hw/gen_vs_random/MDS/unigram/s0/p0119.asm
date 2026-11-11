.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rdi
bts rbx, 25
cmovp esi, ecx
cmovnle bx, ax
xor cx, -18
cmovnbe rax, rbx
cmovl ecx, eax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
cmovnp rdi, rcx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
cmovb ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
bt cx, bx
test ax, 4430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
