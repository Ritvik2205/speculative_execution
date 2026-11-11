.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, -372470678
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
not rax
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
cmovb esi, edx
cmovp rdx, rbx
cmovs rsi, rcx
or al, cl
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and al, -83 # instrumentation
cmovnp rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
bts ebx, ebx
cmovnb edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
