.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rsi, rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and cx, -8
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
or ebx, -15
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
not bl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 49
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor ebx, 2
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and dl, dl
xor al, dil
cmovnbe cx, dx
or dl, 85
btc ebx, eax
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and al, cl
test rbx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
