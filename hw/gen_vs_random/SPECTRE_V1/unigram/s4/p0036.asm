.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
adc bl, -76
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
lea eax, qword ptr [rcx + rcx + 88]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov rdx, 3609511260715352814
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
lea rsi, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and bl, cl
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
