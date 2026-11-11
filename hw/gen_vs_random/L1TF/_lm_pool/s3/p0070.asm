.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
xchg rbx, rsi
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add dil, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
add dil, bl
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
