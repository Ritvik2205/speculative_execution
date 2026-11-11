.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
lea rax, qword ptr [rdi + rbx]
sub bl, 15
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
sbb sil, sil
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
cmovo eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
adc dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
