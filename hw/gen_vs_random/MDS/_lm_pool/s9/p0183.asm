.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and si, -121
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and bl, bl
cmovnp dx, ax
btr bx, dx
xor dil, sil
xor cl, 24
or rdx, -109
test al, dl
xor al, sil
jmp .bb_0.1
.bb_0.1:
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
