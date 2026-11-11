.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmovnl eax, edi
add cl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cx, 88
inc rdx
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
test edi, ecx
add cl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and edx, -62
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
