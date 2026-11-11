.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
btc rdi, 6
cmovnb rax, rdx
not dl
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
cmovnb rax, rax
and al, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
cmovnb ecx, ecx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and cx, dx
and al, -56 # instrumentation
cmovl rdx, rdi
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 49
or cx, 10
cmovle rbx, rax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
cmovnp bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
