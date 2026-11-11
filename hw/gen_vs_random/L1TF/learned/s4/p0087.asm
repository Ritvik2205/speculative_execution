.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and bl, sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
neg dil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
add al, cl
jmp .bb_0.3
.bb_0.3:
lea eax, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
