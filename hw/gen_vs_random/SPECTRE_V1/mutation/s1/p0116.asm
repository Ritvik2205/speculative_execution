.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
test eax, 133988823
test rdx, 1657596343
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
add dil, -75
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cwde
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
not cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
lea di, qword ptr [rdi + rdx + 30816]
setl cl
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
sets dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
