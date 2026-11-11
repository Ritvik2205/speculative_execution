.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 39
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 73
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or rcx, 54
or al, 37
test bl, 65
btc ax, 53
and ax, -10351
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test eax, 298249463
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
xor rdx, -59
and cl, -111
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
