.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
or dil, -28
or bl, 61
movzx ebx, si
and rdi, -60
setnb al
btc ecx, eax
jmp .bb_0.1
.bb_0.1:
neg di
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 97
lea dx, qword ptr [rbx]
lea rdi, qword ptr [rsi + rbx]
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45
movzx edi, al
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
