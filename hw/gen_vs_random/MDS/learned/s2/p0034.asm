.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
xor dl, bl
test ebx, -961564216
and al, 82
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor dil, -124
btc si, 43
and ax, -10351
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or bl, -125
or bx, 38
xor cl, 83
and bl, 68
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
