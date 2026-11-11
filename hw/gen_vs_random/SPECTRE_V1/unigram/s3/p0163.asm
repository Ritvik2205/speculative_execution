.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea ecx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
xor bl, 92
btr rdi, 10
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
or bl, dil
xor cx, 25
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 21
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
lea edi, qword ptr [rbx + rdi + 43315]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
xchg di, cx
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
add bl, 28 # instrumentation
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
