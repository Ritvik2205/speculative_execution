.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
sub al, -47
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
add cl, -20
xor sil, 64
xor cl, sil
jmp .bb_0.1
.bb_0.1:
xor sil, dl
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
