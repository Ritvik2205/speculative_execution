.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
test dl, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 94
test esi, 1857129931
xor cl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and dil, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor dil, dl
test sil, bl
and bl, bl
bt di, dx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or ax, 16560
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
