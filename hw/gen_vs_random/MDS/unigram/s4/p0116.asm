.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
bt ebx, edi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
bt rcx, rdi
cmovle rdi, rbx
cmovnz rdi, rsi
btr rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and dl, dl
cmovno di, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
cmovz rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and dil, dil
cmovbe si, ax
and eax, 33
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
btc rdi, 221
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
