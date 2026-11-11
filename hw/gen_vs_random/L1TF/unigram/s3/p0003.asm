.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
bts ebx, 64
movsx esi, ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
lea rbx, qword ptr [rdx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
imul rbx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
test al, -70
bswap edi
or rcx, 95
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
