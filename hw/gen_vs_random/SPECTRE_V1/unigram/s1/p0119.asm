.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
neg dl
inc rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 33
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
neg dx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 8
lea rsi, qword ptr [rax + rdi]
mov cl, dil
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
adc ax, -27488
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
