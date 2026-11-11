.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
or al, cl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
cmovs rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
not rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and al, -83 # instrumentation
cmovnp rcx, rbx
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovb esi, edx
test edx, -1561252782
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
bts ebx, ebx
cmovnb edi, edx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
cmovp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
