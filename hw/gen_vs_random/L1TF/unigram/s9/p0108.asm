.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sbb al, bl
seto bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test bx, 23
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
sub sil, -99
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
sub edi, esi
add cl, -95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 95
and dil, 58
imul cx, bx, 61
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
cmp bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
