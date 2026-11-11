.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 48 # instrumentation
cmovnz edx, edx
cmovl esi, eax
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
cbw
test dx, 92
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
cmovnb bx, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
cmovnb edx, eax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add cl, 35 # instrumentation
sets dl
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 24
xchg ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
