.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
add cl, -93 # instrumentation
setnb cl
and bx, -118
inc al
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
dec di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
add cl, 112 # instrumentation
sbb edi, 57
lea ebx, qword ptr [rcx + rcx + 43124]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
