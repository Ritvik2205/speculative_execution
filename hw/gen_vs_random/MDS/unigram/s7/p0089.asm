.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
test al, bl
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
cmovz dx, dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
test bl, 65
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
xor al, -89
btc eax, 40
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and ax, 19224
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
