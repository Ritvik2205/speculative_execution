.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
and si, -121
or bl, 13
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
cmovbe bx, ax
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
bt ax, 76
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
xor al, cl
and cl, -76 # instrumentation
cmovl bx, ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
btr rsi, 207
xor sil, -14
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and ax, 19224
test ecx, -1843375753
or dil, bl
cmovnz di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
