.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 40
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
cmovb si, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
cmp cl, dl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 37
and rdi, 86
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
mov cx, bx
sub ax, 7297
add dil, -6 # instrumentation
cmovnb ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
