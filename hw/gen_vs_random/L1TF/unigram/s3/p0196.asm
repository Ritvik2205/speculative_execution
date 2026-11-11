.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
xor dl, -82
test dil, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor al, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
