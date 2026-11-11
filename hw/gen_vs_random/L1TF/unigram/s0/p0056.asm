.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, bl
add dl, 70 # instrumentation
sbb al, -81
add bl, 79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
sub dl, -78
add bl, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
lea edx, qword ptr [rcx + rcx + 92]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 19
or bl, -88
or sil, sil
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
setb al
and rdi, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
