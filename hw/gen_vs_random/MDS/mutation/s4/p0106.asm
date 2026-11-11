.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
xor ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and al, 21 # instrumentation
cmovb bx, ax
cmovnbe rcx, rax
btc dx, 67
test dil, bl
xor al, bl
cmovnle edx, ebx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and eax, 33
cmovnbe di, ax
or bl, bl
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
