.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
sub dil, al
test eax, -2032743474
and dl, 10
dec bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
lea rbx, qword ptr [rcx + rsi]
jmp .bb_0.2
.bb_0.2:
sbb eax, -403815802
cmp bl, 123
mov al, sil
add al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
