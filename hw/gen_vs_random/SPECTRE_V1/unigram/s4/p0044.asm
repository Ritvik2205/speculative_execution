.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
test ax, di
or sil, 122
btc ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
cmp ax, -11439
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
lea bx, qword ptr [rbx + rcx + 21]
and cl, -57
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
add dl, sil
cmp al, bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
