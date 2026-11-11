.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
imul rcx
or rdx, -22
cmovns esi, edx
mov bl, cl
adc al, 80
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
xor rdi, -80
neg bl
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
lea eax, qword ptr [rdx + rax + 51706]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
sbb bl, bl
and dl, dl
test bl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
btr esi, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
