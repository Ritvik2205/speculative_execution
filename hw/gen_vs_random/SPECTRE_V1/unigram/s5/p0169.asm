.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rax, 84
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
bts si, 18
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or rbx, 100
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and sil, bl
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
cmp sil, dil
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
add al, 19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
