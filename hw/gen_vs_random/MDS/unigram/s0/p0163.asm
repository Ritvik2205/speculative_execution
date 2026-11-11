.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and al, -108 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and edi, 23
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
test rbx, 8
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
cmovle rax, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and cl, dl
bt si, 23
cmovnle edi, eax
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
