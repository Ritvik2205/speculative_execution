.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor esi, 52
btr si, 52
and al, sil
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and al, 42 # instrumentation
cmovz ecx, edx
and esi, 96
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
btc di, 233
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
bts rcx, 85
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
and edi, 23
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and al, cl
xor rax, -1657511731
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
