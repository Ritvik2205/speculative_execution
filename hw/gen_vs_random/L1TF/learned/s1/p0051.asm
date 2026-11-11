.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
btc rsi, rdi
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dx, si
lea rsi, qword ptr [rbx + rax]
sub ebx, 70
not dl
and al, -115 # instrumentation
cmovl bx, ax
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
