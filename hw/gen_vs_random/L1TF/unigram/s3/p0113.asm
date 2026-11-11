.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb al
lea bx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
cmovno si, si
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 91
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
imul rdi, rsi, -42
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 21
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and dil, bl
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
