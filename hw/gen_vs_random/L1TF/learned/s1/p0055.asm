.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 76
xor bl, bl
xor dl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 98
jmp .bb_0.3
.bb_0.3:
xchg edx, eax
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
