.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 94
cmp ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
setnle dl
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
mov dl, bl
lea bx, qword ptr [rax + rax + 61]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
