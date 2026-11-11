.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 98
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bts di, 230
test cx, -17886
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 24
test sil, 47
not eax
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xor cx, 73
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
cmovnz ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
