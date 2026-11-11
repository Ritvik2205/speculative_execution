.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
sub bl, -89
xor dil, 117
or al, -50
adc cl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
add bl, al
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
sub dx, -12
or al, 1
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub dil, 35
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
