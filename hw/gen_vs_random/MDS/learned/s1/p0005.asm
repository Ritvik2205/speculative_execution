.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor al, -89
bts rcx, rdx
or al, -75
test sil, al
xor al, 8
btr bx, ax
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or sil, -78
xor dl, -43
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
