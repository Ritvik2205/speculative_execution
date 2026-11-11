.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
test dl, dil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test rdi, 45
test dl, sil
test al, cl
test eax, 343548072
or al, 30
xor bl, al
and cl, dl
and cx, -8
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
bt si, bx
or sil, -78
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
