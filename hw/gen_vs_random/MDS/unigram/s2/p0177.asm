.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
cmovle esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
not al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
btc rsi, 105
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
xor dil, dl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 11
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
or dx, 125
test dil, 46
or cl, 30
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
