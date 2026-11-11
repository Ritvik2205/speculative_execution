.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xor rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
btc ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
mov sil, dil
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
