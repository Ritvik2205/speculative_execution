.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and ax, 21910
or di, di
or dl, bl
add al, 18
or cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
neg cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and eax, 933895314
adc al, dl
not ecx
lea rcx, qword ptr [rbx + rcx + 45597]
not cx
add dx, -90
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
