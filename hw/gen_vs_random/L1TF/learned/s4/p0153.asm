.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, 105
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and dil, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
