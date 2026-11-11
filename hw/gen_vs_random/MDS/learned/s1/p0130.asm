.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor dil, -70
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
test dil, bl
xor rax, -843636050
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
bt cx, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btc dx, 67
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
not bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, bl
bt cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
