.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 9
setnl al
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
lea ax, qword ptr [rax + rdx + 5]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
add al, 24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
bt rbx, rdx
btr esi, eax
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
adc ax, 87
xor ax, 0
lea rax, qword ptr [rax + rbx]
neg rax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
