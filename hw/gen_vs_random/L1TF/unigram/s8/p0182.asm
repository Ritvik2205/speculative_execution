.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 30
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 27
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
bt cx, di
imul cx, bx, 44
and dl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btr rcx, rbx
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
