.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
sbb al, -4
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmp sil, -11
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 88
setnz sil
test al, -84
test ax, 13879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
