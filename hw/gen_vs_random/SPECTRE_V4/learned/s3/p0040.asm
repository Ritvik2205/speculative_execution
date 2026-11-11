.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
adc eax, -1513455903
or al, 109
xor bx, dx
sub ax, 24441
mov al, 58
lea ebx, qword ptr [rsi]
cmovz eax, edi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
