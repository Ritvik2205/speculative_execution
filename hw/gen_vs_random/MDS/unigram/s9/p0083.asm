.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 125
btr cx, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
or al, 54
cmovo eax, eax
bt edi, 225
and bl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and al, cl
cmovz dx, ax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 76
test cl, 0
or al, -24
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 60
and rax, -2058103810
test al, 91
and cl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
