.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, al
add cl, -94 # instrumentation
or sil, cl
inc dil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
adc ax, si
lea rsi, qword ptr [rsi + rbx]
lea si, qword ptr [rdi + rcx + 26]
neg bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
cmovnbe rbx, rsi
cmp rdx, -19
lea si, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
test dx, 67
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
