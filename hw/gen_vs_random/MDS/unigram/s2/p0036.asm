.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and si, cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
or al, dil
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and dil, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
and bl, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
bt edx, 69
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 40
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
bt eax, 98
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
test eax, 758789512
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and sil, 65
cmovnbe di, dx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
