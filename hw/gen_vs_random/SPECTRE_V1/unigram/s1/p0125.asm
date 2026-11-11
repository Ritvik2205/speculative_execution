.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 14
add rax, 977059290
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 69
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 80
inc ebx
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rbx
sub dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
movsx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
bts rcx, rbx
xchg sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
