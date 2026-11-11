.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, esi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add dl, -48 # instrumentation
lea ebx, qword ptr [rbx + rax]
add cl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 63
imul ax
lea rbx, qword ptr [rsi + rcx + 67]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 58
lea bx, qword ptr [rsi + rbx]
xor ecx, 87
add cl, -110 # instrumentation
setbe dil
add bl, 15 # instrumentation
cmovb ecx, ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
