.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and dl, dl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
test bl, -14
and cl, cl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 34
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
bts rax, 77
xor eax, edi
cmovo rcx, rax
test cl, -18
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
cmovp ebx, ebx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
xor edi, eax
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
