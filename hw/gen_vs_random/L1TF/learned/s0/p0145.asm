.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
jmp .bb_0.1
.bb_0.1:
bt eax, 42
btr bx, di
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and dl, 10
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
test al, -56
sbb al, sil
cmp al, cl
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
