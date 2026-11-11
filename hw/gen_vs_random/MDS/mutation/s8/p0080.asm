.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -574348013
cmovnbe di, ax
or al, -58
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor ax, ax
cmovnle edx, ebx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
test dil, bl
btc dx, 146
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
cmovnbe rcx, rax
and al, 21 # instrumentation
cmovb bx, ax
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
