.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sbb dl, dil
sub sil, -99
adc ax, 87
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
lea rdi, qword ptr [rbx + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 72
cmp bl, 123
lea si, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
