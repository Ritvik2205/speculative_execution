.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test cl, 65
or al, -57
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and di, 3
or dx, 55
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
