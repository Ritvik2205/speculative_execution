.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 76
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or dil, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test bx, 4954
and dx, 60
or esi, -110
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 23
and ax, si
and dil, -39
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
bts ax, 22
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 7
and dl, -40 # instrumentation
cmovp edx, edx
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
cmovl rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
