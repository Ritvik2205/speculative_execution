.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 52
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc sil, bl
xor al, sil
xchg rax, rsi
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test rdx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
