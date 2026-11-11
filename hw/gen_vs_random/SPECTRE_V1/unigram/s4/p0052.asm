.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
add cl, -29 # instrumentation
lea rdx, qword ptr [rdi + rdi + 24]
xor rax, 1636804787
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 74
setnz al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
cmp cl, cl
lea rdi, qword ptr [rcx]
lea rsi, qword ptr [rax + rcx + 33]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 29
cmovns rdi, rcx
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
bts rsi, 234
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
