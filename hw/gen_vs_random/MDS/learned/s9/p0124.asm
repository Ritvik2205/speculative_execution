.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 1886208862
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 62
bt di, ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
btr dx, bx
xor dl, bl
or al, cl
and si, -121
or eax, -1777347252
and bl, al
xor dil, -70
and eax, 561041355
jmp .bb_0.2
.bb_0.2:
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
