.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or dil, sil
xor di, 40
xor dl, -19
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and sil, -56
or rax, 52
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
xor bl, cl
xor sil, -126
or dil, dl
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
