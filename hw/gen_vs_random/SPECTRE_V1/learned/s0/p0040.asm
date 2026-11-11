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
xor rax, 1636804787
sub al, 10
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, -357903210
dec bl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 63
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
lea rsi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
test bl, 12
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
