.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor al, -19
not al
or dl, 85
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
or al, dl
jmp .bb_0.1
.bb_0.1:
or al, bl
and rax, -2039117613
and cl, cl
or rax, -1561934807
test dil, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
test esi, 425331143
xor ax, -12492
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
