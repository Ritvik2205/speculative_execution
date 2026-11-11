.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 78
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
lea eax, qword ptr [rbx + rbx + 97]
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
and sil, sil
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rax + rdx + 11]
add al, -80
lea rsi, qword ptr [rsi + rdi + 73]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
