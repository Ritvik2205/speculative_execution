.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
lea ebx, qword ptr [rsi + rsi + 13]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
btr dx, cx
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
xor dil, -42
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
sub dl, 105
and al, -68
and ax, 7954
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
