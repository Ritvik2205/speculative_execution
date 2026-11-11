.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 33
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
add dil, 88
and bl, sil
and rax, 1163013815
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
cmp al, -119
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
