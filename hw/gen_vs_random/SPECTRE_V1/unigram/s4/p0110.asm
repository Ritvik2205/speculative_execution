.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 76
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
cmovno rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -4
add cl, 75 # instrumentation
sbb al, bl
xchg ax, cx
or ax, si
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cwde
bts eax, ebx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
add dl, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
add ax, -16969
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 37
add dil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
