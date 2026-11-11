.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea bx, qword ptr [rdi + rdx]
adc cx, -30
cmovz eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
add bl, -27 # instrumentation
sets bl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
movsx edx, dl
sbb edx, -8
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
