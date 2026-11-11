.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 29
or dx, dx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
add ax, 23362
jo .bb_0.1
jmp .exit_0
.bb_0.1:
setl cl
imul rsi, rbx, 22
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
lea edi, qword ptr [rax + rdi + 13]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
adc edi, 81
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
