.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rax, 79
xor rbx, 89
jmp .bb_0.2
.bb_0.2:
or bl, dil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 57
xor al, -19
not al
xor dil, -70
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
test dil, bl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
test sil, cl
or dil, 16
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
