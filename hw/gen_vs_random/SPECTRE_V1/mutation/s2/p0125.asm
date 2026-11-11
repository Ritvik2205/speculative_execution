.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
test ax, 18607
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
setno bl
lea rcx, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, ax
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
dec esi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xor ax, 17976
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
mov cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
