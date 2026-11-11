.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
btc ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
add al, -37 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
add sil, 97 # instrumentation
cmovnbe esi, edi
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 10
cmp rsi, 67
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
