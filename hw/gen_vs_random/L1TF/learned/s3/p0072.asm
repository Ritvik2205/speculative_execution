.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and dl, cl
jmp .bb_0.1
.bb_0.1:
add ax, -10746
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 79
and al, -68
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
xor bl, dil
sbb dl, dil
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
