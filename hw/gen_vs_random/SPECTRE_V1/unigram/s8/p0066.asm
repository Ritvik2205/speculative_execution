.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and cl, 86
bt eax, ebx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
adc esi, esi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
btr rbx, 23
sbb bl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 32
adc esi, -39
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
