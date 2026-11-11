.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 92
xor rcx, -2
and al, al
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
bt di, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or bl, dil
and dil, al
xor bl, cl
test cl, dl
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
