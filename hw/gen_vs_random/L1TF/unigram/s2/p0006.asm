.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, al
test ebx, 7
sbb dil, 91
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
cmovnl si, dx
and dil, 49
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
cmovno cx, cx
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
sub rdx, rdi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or al, -87
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
or eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
