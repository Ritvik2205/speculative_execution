.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and ax, 27170
bts rsi, 205
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or sil, cl
test eax, -675944960
and ax, 13090
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and di, 91
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test dl, bl
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
