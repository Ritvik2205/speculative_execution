.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
add bl, -95
sub dl, 96
sub cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
lea di, qword ptr [rbx]
test cl, -33
mov al, sil
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
sub rax, -1628299544
add bl, 70
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
xor bl, bl
add eax, -371144449
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
