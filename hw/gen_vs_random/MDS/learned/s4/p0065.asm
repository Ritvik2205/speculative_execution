.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and al, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test rdx, 75
or rax, -141551502
or dl, -8
and rax, 498847670
and al, 14
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor ax, -5889
btc ax, 13
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
test dl, dil
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
