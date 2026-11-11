.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, ax
sub bl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
and ecx, -38
sub dil, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
neg dl
movsx edi, di
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
add cl, -23 # instrumentation
cmovl bx, si
not rbx
add al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 47
mul sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
