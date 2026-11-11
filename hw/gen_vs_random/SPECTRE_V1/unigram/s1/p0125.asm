.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
lea ax, qword ptr [rdi + rsi]
cmovnbe eax, esi
lea ebx, qword ptr [rdi]
xchg edx, ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt bx, 27
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
cmp eax, esi
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 26
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
bt rcx, rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
