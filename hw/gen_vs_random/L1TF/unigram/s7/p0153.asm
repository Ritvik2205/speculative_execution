.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, ecx
xor al, sil
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
sbb si, si
xor bl, bl
jmp .bb_0.1
.bb_0.1:
bt eax, 95
lea ax, qword ptr [rbx + rdi + 7]
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
movzx ecx, cx
add bl, 115 # instrumentation
setz al
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
imul rax, rdi, 77
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
