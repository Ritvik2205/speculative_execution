.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
btc si, bx
and sil, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 79
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test bl, al
and al, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
xor rcx, -2
or bl, 43
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 67
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
not ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 66
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
