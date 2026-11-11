.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 40
and cl, 79
or bl, dl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, 14
bt bx, cx
xor bl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and sil, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
