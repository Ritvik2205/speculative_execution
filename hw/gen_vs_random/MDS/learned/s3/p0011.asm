.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
not cl
jmp .bb_0.1
.bb_0.1:
or ax, -23697
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or al, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and dl, cl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
