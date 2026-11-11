.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, 70
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
cmovb ecx, eax
sbb bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
or di, 8
setle al
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 72
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
adc sil, 10
jmp .bb_0.1
.bb_0.1:
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 73
or al, -87
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
sbb cx, 3
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
