.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
or ebx, edx
or sil, -78
xor al, 122
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, -2058103810
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
xor dil, -3
not dl
or sil, -49
xor bl, -61
test al, cl
btr di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
