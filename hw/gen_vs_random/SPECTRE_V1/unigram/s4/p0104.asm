.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 62
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
add dl, 63 # instrumentation
cmovle di, cx
lea bx, qword ptr [rax + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 80
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rdx, 40
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and dl, 35
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
