.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
or rax, 699028911
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
xor ebx, -81
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
imul bx, ax, 85
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
