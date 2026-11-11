.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -75
sub sil, -99
btr ecx, 18
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
sbb dx, bx
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
lea ebx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rbx]
cmovs di, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
add cl, -20
cmp sil, -11
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
or si, 78
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
