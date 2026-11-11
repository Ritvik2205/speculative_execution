.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
xor ax, -1005
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rcx, 107
not al
and bl, 68
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
