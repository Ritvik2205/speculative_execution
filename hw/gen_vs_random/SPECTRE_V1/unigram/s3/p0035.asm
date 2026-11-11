.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ax, 15
or cx, 4
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
bts ax, 97
add rdx, 95
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, sil
lea ax, qword ptr [rax + rbx]
add dl, 52 # instrumentation
sets al
inc ebx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 51
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
