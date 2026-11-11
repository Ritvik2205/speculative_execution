.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rax, rcx
cmovl ecx, eax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
lea rbx, qword ptr [rdi + rax]
btc esi, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
cmovnz si, bx
add bl, -9 # instrumentation
adc rdx, 55
lea edx, qword ptr [rsi + rax + 46]
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
add bl, 115 # instrumentation
setz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
