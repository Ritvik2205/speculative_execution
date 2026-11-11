.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
adc dl, 48
sets bl
bts rbx, 44
cmovnle ax, cx
xor dl, 71
adc dl, -49
xor dl, bl
or rbx, 85
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -25 # instrumentation
sbb di, ax
add dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
add cl, 32 # instrumentation
cmovnbe rdi, rax
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
mul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
