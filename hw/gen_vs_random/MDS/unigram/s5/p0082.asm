.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
or dl, 85
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
bt edx, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
bt edi, 17
cmovz ecx, eax
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
