.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
bts rcx, rbx
and cx, -8
jmp .bb_0.1
.bb_0.1:
bts rax, 77
and dl, -73
jmp .bb_0.2
.bb_0.2:
xor al, -4
xor sil, -46
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and sil, bl
or bl, -125
and ebx, 14
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
jmp .bb_0.3
.bb_0.3:
or sil, -49
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
