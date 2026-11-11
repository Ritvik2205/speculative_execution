.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
xchg rbx, rsi
movsx bx, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 100
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
add dil, 27
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setns al
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
add dl, 92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
adc dil, 16
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
add cl, bl
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
