.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
sub al, -82
sub sil, dil
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
xchg al, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
lea rsi, qword ptr [rax]
lea cx, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sub cl, dil
or dl, bl
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
