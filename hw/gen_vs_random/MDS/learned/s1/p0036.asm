.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
not bl
and bl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
not dl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and al, 106
xor al, -89
or rax, -1561934807
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
