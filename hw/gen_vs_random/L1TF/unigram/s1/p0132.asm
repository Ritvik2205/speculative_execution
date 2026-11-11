.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, 96
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
add cl, -98 # instrumentation
setp dil
and bx, 99
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc ax, di
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rcx + rax + 79]
bts rdi, rax
sub rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
