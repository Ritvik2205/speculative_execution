.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
or rax, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
bt eax, 1
and dil, -3 # instrumentation
cmovnb di, si
bts esi, edi
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
cmovo si, si
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 22
and ax, dx
cmovl rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
or esi, 45
test eax, 758789512
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or al, dl
cmovnb ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
