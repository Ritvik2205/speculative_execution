.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
mov cl, cl
mov rdx, rbx
add sil, 99 # instrumentation
sets sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, -54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 27
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
movzx ax, bl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
test cl, -31
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
