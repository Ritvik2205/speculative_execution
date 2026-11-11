.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
or cl, cl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and dl, -127 # instrumentation
cmovno eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
cmovo ecx, edi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and al, 67 # instrumentation
cmovl rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
test rsi, 93
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdi, 80
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
test cl, 62
cmovns rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and dl, 1 # instrumentation
cmovl si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
