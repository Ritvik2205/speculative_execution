.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
not rax
bts ebx, ebx
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovp rdx, rbx
cmovs rsi, rcx
test edx, -372470678
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
cmovb esi, edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
or al, cl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and al, -83 # instrumentation
cmovnp rcx, rbx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
