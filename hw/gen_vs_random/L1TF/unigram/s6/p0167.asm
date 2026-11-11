.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
xchg dl, sil
lea rdx, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
xor rax, -2072052278
adc sil, 66
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
add dl, -70
test rbx, rsi
and bx, ax
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
add al, -80
lea ax, qword ptr [rbx + rbx + 80]
mov sil, sil
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
