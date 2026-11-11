.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz esi, ebx
cmovle rbx, rax
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rsi + 28]
sbb dx, dx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
lea rax, qword ptr [rcx + rbx]
cmovz rdi, rdx
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 93
add edx, 56
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
cmovnb edi, ebx
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test cl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
