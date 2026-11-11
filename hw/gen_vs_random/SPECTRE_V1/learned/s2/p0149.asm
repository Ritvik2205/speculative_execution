.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, -105
cmp dil, sil
xor rax, -2035087432
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
add dil, 27
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
mul di
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovo rbx, rax
or dil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
