.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
xor al, 16
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
lea bx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
test cl, 8
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and bl, dl
setnz cl
jmp .bb_0.3
.bb_0.3:
cbw
add bl, sil
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
