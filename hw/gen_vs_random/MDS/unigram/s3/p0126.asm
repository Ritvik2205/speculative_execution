.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
xor al, al
xor al, 77
xor ecx, 4
bts rax, rdi
and dil, -49 # instrumentation
cmovno di, bx
cmovb rdi, rax
bts rdx, 255
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and al, -37
not eax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 77
btc ax, 68
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
or edi, edx
or bl, dl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
cmovnb si, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
bts ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
