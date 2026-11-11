.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
dec bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
inc al
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
sbb dil, sil
test al, dil
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
