.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
not rax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
bts ebx, ebx
cmovp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
cmovnb edi, edx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
cmovb esi, edx
test edx, -372470678
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
or al, cl
cmovs rsi, rcx
and al, -83 # instrumentation
cmovnp rcx, rbx
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
