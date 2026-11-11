.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -52
xor rcx, 71
xor eax, 571592471
or al, -17
and cl, 79
test al, -81
and bl, bl
and dl, al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test eax, 1287331633
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
btr edx, eax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test eax, 1729060510
test sil, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
