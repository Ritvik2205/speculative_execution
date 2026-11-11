.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
cmp si, 71
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rcx
adc al, -103
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
lea ax, qword ptr [rbx + rax]
cmovo cx, di
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmp bx, -21
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
inc dil
cmovb esi, ebx
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
