.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
lea rbx, qword ptr [rdi + rcx + 63]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
or ax, 18658
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
