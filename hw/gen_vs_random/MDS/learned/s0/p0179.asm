.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and al, 106
or sil, cl
or cl, -36
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test dil, 46
or al, dil
bt ax, dx
or dl, sil
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
