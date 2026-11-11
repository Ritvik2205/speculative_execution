.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
not rax
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
test edx, -372470678
cmovp rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
bts ebx, ebx
or al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovs rsi, rcx
cmovb esi, edx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and al, -83 # instrumentation
cmovnp rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl eax, eax
and al, 84
cmovbe rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
bt eax, 151
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
