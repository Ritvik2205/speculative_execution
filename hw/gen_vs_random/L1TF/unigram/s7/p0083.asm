.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
add dil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 83
adc al, 70
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
test cl, cl
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
xchg cx, di
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add bl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
cmovnb eax, edx
cmovs ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
