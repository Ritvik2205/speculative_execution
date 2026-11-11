.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
test al, bl
jmp .bb_0.1
.bb_0.1:
test cl, 54
bt eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or al, -78
xor ax, -4010
or sil, cl
jmp .bb_0.2
.bb_0.2:
xor bl, 67
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
xor ax, -23364
xor sil, -46
xor rcx, 71
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
