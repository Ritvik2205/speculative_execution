.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
add dl, 126 # instrumentation
cmovnl si, dx
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
xor rax, -1905683998
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
mov bl, -31
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
adc sil, -77
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
