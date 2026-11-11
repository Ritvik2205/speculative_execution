.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 55
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
add bl, 105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], ax
add dl, 121 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
adc cl, cl
cmovnz bx, si
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 15
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], di
sub bl, dl
xor rbx, rax
add bl, -46 # instrumentation
cmovbe rbx, rcx
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
