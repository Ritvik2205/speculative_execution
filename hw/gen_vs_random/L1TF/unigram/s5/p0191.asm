.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test bl, 45
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 32
add al, bl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 27
cmp ebx, 90
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
adc rbx, rdx
imul al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 85
sub ebx, ecx
add cl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
cmovz edx, eax
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
