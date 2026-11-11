.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, edx
cmovnbe bx, bx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
imul bl
mov ebx, edi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 15
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
cmovp eax, esi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
add dl, 63 # instrumentation
cmovle ax, si
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ecx
cmp ecx, esi
bt rsi, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
