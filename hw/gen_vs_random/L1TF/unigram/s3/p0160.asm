.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
cmovnz ebx, ecx
sbb cl, -11
xor cl, al
cmovz ebx, ecx
add cl, -94 # instrumentation
setnb cl
add dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 63
add cl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rbx, -64
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmp bx, 90
xor ax, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
