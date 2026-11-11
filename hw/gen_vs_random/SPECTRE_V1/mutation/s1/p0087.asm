.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
add bl, -27 # instrumentation
sets bl
movsx edx, dl
cmovz eax, ecx
add al, -14 # instrumentation
lea bx, qword ptr [rdi + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
adc cx, -30
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
sbb edx, -8
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -89
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add dl, 95 # instrumentation
cmovnb rbx, rsi
and esi, esi
lea edx, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
