.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, 87
lea edi, qword ptr [rsi]
test esi, 36
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 39
and ebx, 108
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cx, 53
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
