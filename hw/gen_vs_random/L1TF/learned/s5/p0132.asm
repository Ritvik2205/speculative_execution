.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
sbb edx, 23
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
setp dil
jmp .bb_0.2
.bb_0.2:
bts rcx, 42
bt ebx, edi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
xor ax, 22976
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
