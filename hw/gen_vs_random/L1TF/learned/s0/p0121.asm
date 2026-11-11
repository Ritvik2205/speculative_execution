.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 98
lea ax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 24
jmp .bb_0.4
.bb_0.4:
lea di, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor bl, cl
xor al, sil
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
