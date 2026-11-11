.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rsi
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
bt rsi, 18
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 15
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
add al, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
