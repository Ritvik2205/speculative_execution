.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
or dx, 77
or cl, bl
add dil, bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
cmp dl, dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
add al, cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
and edi, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
