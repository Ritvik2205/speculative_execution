.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdx
xor dl, dl
lea rsi, qword ptr [rax + rdi]
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
movzx rdx, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
add al, -9 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 40
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
xor dil, -42
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
