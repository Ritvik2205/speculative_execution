.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or al, -75
xor cl, 24
bts rbx, 115
xor bl, 67
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 28
jmp .bb_0.1
.bb_0.1:
test cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
test sil, al
xor sil, al
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
