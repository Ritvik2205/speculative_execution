.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
btc rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
not dl
test rcx, rsi
or rax, 1808026647
jmp .bb_0.1
.bb_0.1:
test cx, dx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 38
cmovnb esi, edx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
setns dl
sub di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
