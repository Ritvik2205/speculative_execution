.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
adc edx, 8
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
cmp edi, ecx
or edx, 40
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and cl, al
adc sil, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
mov rdx, 3609511260715352814
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
xor cl, dl
movzx edx, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
