.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 14
cmovnz rdx, rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
cmovnle rsi, rsi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ecx
xor cx, 41
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
adc dil, dil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 84
movsx dx, cl
test cl, -31
dec dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
