.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 50
cmovl rbx, rbx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
inc dl
cmp sil, -110
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
sub esi, 62
imul esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
