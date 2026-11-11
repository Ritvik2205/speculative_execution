.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
lea edx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and eax, 64
jmp .bb_0.3
.bb_0.3:
lea rsi, qword ptr [rdi + rdi + 14128]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 85
test sil, -101
xor rsi, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
