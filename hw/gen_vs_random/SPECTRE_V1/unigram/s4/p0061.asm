.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 99
cmp cx, si
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
not cx
xor ebx, edi
xor cx, 94
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
lea si, qword ptr [rdx + rdi]
xor sil, -33
movzx ax, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
