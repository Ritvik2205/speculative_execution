.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
cmovle bx, ax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
cmovp ax, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
cmovnle di, di
cmovnp rsi, rbx
cmovno rcx, rax
or dil, 16
cmovl ecx, esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
cmovle rax, rsi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
