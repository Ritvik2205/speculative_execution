.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb sil
add dl, 20 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 14
lea ax, qword ptr [rdi + rbx]
imul al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
setnb dil
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
btr cx, si
and dl, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo dx, ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
setle cl
sub dil, al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
sub dx, -23
setnle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
