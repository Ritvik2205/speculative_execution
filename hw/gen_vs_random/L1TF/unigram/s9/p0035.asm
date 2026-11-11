.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 27
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 54
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
imul rbx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
