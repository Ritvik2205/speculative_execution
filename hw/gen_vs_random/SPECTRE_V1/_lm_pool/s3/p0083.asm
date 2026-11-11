.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
add bl, sil
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and al, cl
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
sub al, 63
js .bb_0.2
jmp .exit_0
.bb_0.2:
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
