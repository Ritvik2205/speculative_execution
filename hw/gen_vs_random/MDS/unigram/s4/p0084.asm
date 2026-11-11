.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 22
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor esi, edi
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
or eax, -1777347252
and rax, rax
and al, -114
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
or cl, 39
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
bts rcx, 69
cmovns ax, si
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
or ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
