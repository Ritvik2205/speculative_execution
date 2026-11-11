.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
or cl, 30
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
xor rax, -345061362
or al, 74
or cl, bl
xor rdx, -59
and al, 35
test dil, 46
jmp .bb_0.1
.bb_0.1:
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and dl, sil
test bx, 4954
or dx, 125
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
