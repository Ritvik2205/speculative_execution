.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 29
cmp ax, -4865
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor dl, bl
cmp bl, 123
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, dl
and sil, -90
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rcx]
or al, -2
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
