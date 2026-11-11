.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
lea rax, qword ptr [rsi + rax + 77]
sbb bl, -88
mov cx, 85
sbb di, 80
cmovnbe rcx, rdi
adc cl, -34
sbb cx, 68
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, rdx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
