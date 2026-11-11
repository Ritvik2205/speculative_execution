.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
cmovnz ax, dx
movzx rax, sil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 86
mov dil, dil
jmp .bb_0.1
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
dec dl
bt edx, 75
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
xor sil, bl
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
nop
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 74
cmovo rbx, rax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
cmovnbe si, di
and al, 93
or rax, -2043376621
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
