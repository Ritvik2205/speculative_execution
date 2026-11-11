.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
lea ax, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 45
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
lea ecx, qword ptr [rsi]
sbb ebx, 53
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
neg rsi
xchg bx, cx
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add al, -92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
btc dx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
