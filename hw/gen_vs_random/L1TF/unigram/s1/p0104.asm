.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rax + rbx]
lea rdx, qword ptr [rcx + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
sbb ax, ax
lea rsi, qword ptr [rcx + rsi + 45]
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
setnb dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 94
lea si, qword ptr [rcx]
setz bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
movsx eax, sil
cmp di, -78
cmovo rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
