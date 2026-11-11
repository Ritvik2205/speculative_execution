.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
lea rdx, qword ptr [rax + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
adc rsi, rbx
lea edi, qword ptr [rax + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 94
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rax, ax
cmovnl rcx, rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
