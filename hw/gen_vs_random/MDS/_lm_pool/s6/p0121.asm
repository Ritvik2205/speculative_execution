.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test dil, -51
test al, bl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
test bl, dl
test eax, 1287331633
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
bt bx, dx
and al, sil
and al, -103
btr di, cx
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
