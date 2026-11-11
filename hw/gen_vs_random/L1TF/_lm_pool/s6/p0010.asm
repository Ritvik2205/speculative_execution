.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
sbb sil, cl
btc di, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
cmp sil, -11
sbb al, -50
cmp al, -119
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
xor bl, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
