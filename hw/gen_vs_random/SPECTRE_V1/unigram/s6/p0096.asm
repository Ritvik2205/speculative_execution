.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 21
mov al, -28
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
xor sil, dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
adc dil, 85
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
add ebx, -116
add cl, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
adc rax, 1310333622
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
