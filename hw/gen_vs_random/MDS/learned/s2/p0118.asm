.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor dx, 42
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and al, -103
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor cl, 15
test cl, al
xor al, cl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and cl, al
test eax, 1287331633
xor cl, 24
test dl, al
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
