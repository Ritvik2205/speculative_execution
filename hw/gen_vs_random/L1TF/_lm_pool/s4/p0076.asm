.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
setb dil
and dl, -49
add cl, dl
sbb dil, dl
bt ax, 205
sbb sil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmp ax, -6940
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
