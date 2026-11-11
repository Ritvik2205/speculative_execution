.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, cx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 89
xor al, -19
jmp .bb_0.1
.bb_0.1:
or al, dl
test al, 66
jmp .bb_0.2
.bb_0.2:
test dl, al
jmp .bb_0.3
.bb_0.3:
xor rax, -1657511731
xor dl, sil
or cl, 119
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or dl, bl
or dx, 125
test al, cl
xor edx, -13
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or cl, bl
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
