.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edi, 117
xor ecx, 73
movzx cx, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or edx, 7
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
movzx edx, dil
lea edi, qword ptr [rdi + rbx]
cwde
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
