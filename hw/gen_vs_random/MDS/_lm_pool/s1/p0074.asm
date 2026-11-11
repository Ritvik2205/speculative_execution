.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
xor sil, 110
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or cl, 119
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, 41
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 61
xor bl, -61
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
xor al, -89
and ax, 19740
xor si, 80
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
