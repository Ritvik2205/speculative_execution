.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rdi, rbx
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
cmovbe edx, ecx
and al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
or dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdi]
btc rcx, 42
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
cmovnz rax, rbx
jmp .bb_0.1
.bb_0.1:
or edi, edi
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 15
xor ecx, ebx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
btr rdi, 129
not dl
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
