.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
adc al, -82
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
xor bl, -38
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 83
add bl, -43 # instrumentation
adc si, -23
or dl, 41
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
add ax, 6980
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
sbb si, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
