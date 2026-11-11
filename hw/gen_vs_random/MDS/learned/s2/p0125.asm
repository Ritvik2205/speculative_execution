.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and edx, -44
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or cl, 39
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
xor rcx, 71
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and bx, 23
test dil, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
