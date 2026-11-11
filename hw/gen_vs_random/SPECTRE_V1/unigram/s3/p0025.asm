.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
add dil, 88 # instrumentation
sbb dil, 23
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
movzx ebx, bl
cmp bl, sil
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 37
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
btr eax, 55
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and sil, cl
or edx, edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
