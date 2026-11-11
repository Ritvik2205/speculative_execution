.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
add esi, 45
test al, 42
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
setle sil
jle .bb_0.2
jmp .exit_0
.bb_0.2:
test bl, -8
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
