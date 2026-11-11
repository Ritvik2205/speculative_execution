.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, 36
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 74
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 60
lea si, qword ptr [rdx]
xchg ebx, edi
setnl cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 36
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, dil
mul rdi
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
lea eax, qword ptr [rcx]
or cx, dx
test cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
