.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
cmovs ax, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xchg dil, dl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
xor edi, 74
jmp .bb_0.1
.bb_0.1:
movzx rax, cl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and cx, cx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
add bl, 68
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
