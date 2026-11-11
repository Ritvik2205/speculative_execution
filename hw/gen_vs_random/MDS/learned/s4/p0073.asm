.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
or al, bl
test dil, al
or sil, -78
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor cl, al
and ax, 5001
jmp .bb_0.1
.bb_0.1:
test eax, -675944960
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and dl, -73
or sil, dl
or cl, dil
or sil, -49
jmp .bb_0.2
.bb_0.2:
test al, sil
xor dil, bl
and edx, -44
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
