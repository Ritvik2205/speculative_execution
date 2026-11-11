.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe bx, si
bt esi, 3
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and dl, -73
and bl, -82 # instrumentation
cmovz edx, esi
and dl, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
and dl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
cmovnb edi, ebx
jmp .bb_0.1
.bb_0.1:
cmovnbe rsi, rbx
not bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
xor dx, 88
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
xor dl, sil
and dil, cl
or esi, esi
test bx, 4954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
