.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
cmp ebx, 41
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
add bl, 119 # instrumentation
cmovle cx, dx
or rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cwd
lea ax, qword ptr [rax + rcx + 41285]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 23
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
