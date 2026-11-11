.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
add dl, 126 # instrumentation
cmovnl si, dx
xor rax, 376589024
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
mov bl, -31
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
