.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
add dl, 126 # instrumentation
cmovnl si, dx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
xor rax, -1905683998
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
mov bl, -31
jrcxz .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
jmp .bb_0.2
.bb_0.2:
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
or di, -85
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
