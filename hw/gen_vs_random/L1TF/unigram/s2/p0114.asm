.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
bt ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmp bx, 90
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
cmp dil, 62
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 84
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
sub rcx, -90
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
imul rax, rbx
lea rcx, qword ptr [rdx + rcx + 68]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
