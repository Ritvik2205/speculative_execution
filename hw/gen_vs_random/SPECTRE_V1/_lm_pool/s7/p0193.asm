.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test di, 68
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, cl
xchg esi, eax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
sub bl, sil
adc dil, 82
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
