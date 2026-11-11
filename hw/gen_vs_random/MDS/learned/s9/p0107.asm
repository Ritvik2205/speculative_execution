.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
or al, 16
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, -22
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or sil, dl
test al, -81
xor si, 91
test sil, 17
test dl, al
and dil, 125
jmp .bb_0.1
.bb_0.1:
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
