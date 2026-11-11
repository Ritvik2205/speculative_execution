.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -3178
btr edi, 31
lea ax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 21
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
add al, 30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 91
lea edx, qword ptr [rax + rcx]
and dil, bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
add bl, 104 # instrumentation
sbb rbx, 1
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
sbb cl, -11
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 56
inc rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
