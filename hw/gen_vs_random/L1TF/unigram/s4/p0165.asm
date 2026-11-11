.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
lea rbx, qword ptr [rdi + rbx + 41]
cmovnp cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
xor rax, -2072052278
xor edx, 50
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
mov dil, sil
add dl, 37 # instrumentation
cmovbe di, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
lea si, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
