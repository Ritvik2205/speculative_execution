.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and cl, 79
or al, 54
xor al, -89
test cl, sil
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
not dil
and ax, -4410
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
jmp .bb_0.2
.bb_0.2:
test cl, -18
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
