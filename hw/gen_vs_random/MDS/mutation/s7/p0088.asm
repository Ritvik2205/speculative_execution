.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovz rsi, rax
bt edi, 225
test al, 66
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
cmovns di, dx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
xor esi, edx
cmovns rdx, rdx
xor ax, ax
and eax, 33
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and al, 21 # instrumentation
cmovb bx, ax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnbe rcx, rax
cmovnbe di, ax
or al, 25
btc dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
