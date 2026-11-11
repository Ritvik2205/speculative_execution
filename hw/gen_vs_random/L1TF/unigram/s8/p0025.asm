.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rdx]
lea cx, qword ptr [rax + rsi + 88]
or rcx, 86
add al, 39 # instrumentation
lea ax, qword ptr [rcx]
cmovb edx, edx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
setnl sil
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add bl, -45 # instrumentation
cmovs rbx, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
lea rax, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
