.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
or cl, 10
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 33
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
or edi, 24
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and al, -56 # instrumentation
cmovl rax, rsi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
bts rdi, 94
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovns ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
bts rbx, 94
xor dl, cl
bts ebx, edi
bt edi, ecx
and dl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
