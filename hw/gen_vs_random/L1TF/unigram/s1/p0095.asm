.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
add al, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
add cl, -41 # instrumentation
adc ax, bx
add al, 31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
sub di, si
sbb edx, edi
adc ecx, ecx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 10
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
or sil, al
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
mov rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
