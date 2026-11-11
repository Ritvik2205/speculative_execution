.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 32
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
cmp ax, -31327
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
seto dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
imul sil
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 53
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 70
cmovz rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
