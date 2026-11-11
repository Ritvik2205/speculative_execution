.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
add al, 117
bt rdi, rdx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
sbb cl, dl
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
test edi, ecx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
