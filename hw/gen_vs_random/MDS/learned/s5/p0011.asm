.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -9
xor al, -4
and dl, cl
jmp .bb_0.1
.bb_0.1:
test al, 91
jmp .bb_0.2
.bb_0.2:
or bl, dl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or sil, -78
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and sil, sil
and eax, 366961170
or cl, al
test dl, -95
or rax, 302048971
or al, sil
jmp .bb_0.3
.bb_0.3:
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
