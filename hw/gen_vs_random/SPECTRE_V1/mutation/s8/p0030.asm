.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, rdx
lea bx, qword ptr [rsi + rsi + 55598]
lea eax, qword ptr [rdx + rdx + 832]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
imul esi, ecx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
cmp dl, -115
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
lea si, qword ptr [rbx + rbx + 1252]
bt ecx, 204
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
