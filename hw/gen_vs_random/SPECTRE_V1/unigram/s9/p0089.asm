.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
sbb edi, 92
mul cl
xor rdi, rax
cmp si, -11
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl ebx, eax
add dl, -73 # instrumentation
btr dx, si
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
lea bx, qword ptr [rdx + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
cmovs rdx, rsi
cmovs rdx, rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
