.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
and ebx, edx
cmovl si, ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
btr rdi, 129
and esi, 53
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and dl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
cmovz edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
or bl, cl
cmovbe rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
