.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rbx]
and rcx, 25
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
add al, 93
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sub dil, 87
test dl, -37
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
add al, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
