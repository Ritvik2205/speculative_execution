.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
or eax, -126
and cl, dil
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add al, 18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 17
mov bl, dl
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
