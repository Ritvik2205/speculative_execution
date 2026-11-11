.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
cmovns si, dx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and ax, -122
xor al, dl
or al, 74
xor al, dl
jmp .bb_0.1
.bb_0.1:
test rdx, rcx
and rax, rsi
test cl, -86
xor rax, -773894210
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or al, 30
and ax, -10351
and rdx, 64
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
