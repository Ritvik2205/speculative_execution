.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, bl
cmovnbe di, ax
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
or al, -58
xor ax, ax
btc dx, 67
cmovnbe rcx, rax
test dil, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and eax, 461212071
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
or bl, bl
cmovnle edx, ebx
and al, 21 # instrumentation
cmovb bx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
