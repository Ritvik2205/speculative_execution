.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
inc rcx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea bx, qword ptr [rdi + rbx + 50]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sub dl, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
bt ecx, 204
jl .bb_0.4
jmp .exit_0
.bb_0.4:
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
