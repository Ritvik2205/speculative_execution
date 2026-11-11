.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
adc al, bl
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmp dil, 51
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
lea edx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or rcx, 58
lea rdi, qword ptr [rcx + rsi + 48]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
