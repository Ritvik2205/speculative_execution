.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, ebx
lea edi, qword ptr [rcx + rcx + 96]
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
add dl, -57 # instrumentation
setz cl
add ecx, 95
adc dil, dil
add dl, 100 # instrumentation
lea ax, qword ptr [rdx]
add cl, -94 # instrumentation
setnb al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
mov bx, dx
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
cmovno edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
