.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 100
and bl, bl
and rdx, rbx
or al, -48
jmp .bb_0.1
.bb_0.1:
add dil, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
or al, -57
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
