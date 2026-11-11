.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or bl, bl
test dil, bl
xor al, bl
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
cmovnle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
xor ax, ax
and eax, 943733866
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
or al, 24
btc dx, 67
jmp .bb_0.1
.bb_0.1:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, -4410
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
