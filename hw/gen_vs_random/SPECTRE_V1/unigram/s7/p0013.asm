.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
setb sil
cmovnz ax, bx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
cmovnle edi, edx
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt edi, esi
add dl, 47
add bl, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
cmovo di, ax
add bl, 21 # instrumentation
adc bx, 72
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 22
lea rdx, qword ptr [rsi + rax + 46]
lea eax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
