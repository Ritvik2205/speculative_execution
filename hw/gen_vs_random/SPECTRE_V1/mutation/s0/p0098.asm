.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, -107
test dl, al
xor rax, -2035087432
sub al, 10
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl esi, ecx
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
lea cx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
test ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
