.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 81
add cl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, 41
bt esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
add sil, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
setno al
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
add dl, 47
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
