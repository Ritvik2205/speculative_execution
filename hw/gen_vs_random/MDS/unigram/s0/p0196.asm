.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
cmovp edx, esi
or rsi, rdx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
test dl, 9
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 11
test esi, eax
btr rcx, rax
test edi, ebx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 48
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
test ebx, -961564216
cmovnp di, si
bts esi, 61
not rax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
