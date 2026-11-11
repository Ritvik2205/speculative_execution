.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
or edx, edi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 89
xor al, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
or di, -85
sub cx, 51
lea rax, qword ptr [rbx + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
