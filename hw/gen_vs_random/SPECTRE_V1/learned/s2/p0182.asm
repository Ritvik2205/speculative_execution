.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
add rax, 324518812
mov dl, 57
adc esi, 89
lea ax, qword ptr [rdx + rdi + 19]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 65
dec dl
btr rsi, 6
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
lea ebx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
cmovle di, di
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
cmovo ebx, eax
adc sil, -18
and rdi, 60
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 82
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
