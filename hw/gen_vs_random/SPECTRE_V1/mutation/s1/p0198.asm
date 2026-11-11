.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, esi, -3
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
setnbe al
cmovno di, dx
dec cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
bt ecx, 204
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
cmp dl, 119
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
lea si, qword ptr [rbx + rbx + 1252]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
