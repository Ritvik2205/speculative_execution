.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
test dil, -80
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
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
or al, -22
btc dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
