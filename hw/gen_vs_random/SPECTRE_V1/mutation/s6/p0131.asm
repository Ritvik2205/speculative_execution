.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and ax, 21910
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
add bl, 70
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb dil, -106
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
or si, 0b1000000000000000 # instrumentation
bsf ax, si
movsx rax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
