.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, al
bt rsi, 81
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
adc rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
movsx dx, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
xchg edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
add ebx, 2
sub di, 26
setz dil
movzx eax, dl
xchg rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
