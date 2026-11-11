.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
adc esi, -39
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
setnb cl
xchg cl, dil
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
bt edx, eax
cmovnb rax, rbx
adc dil, 30
test dx, si
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
