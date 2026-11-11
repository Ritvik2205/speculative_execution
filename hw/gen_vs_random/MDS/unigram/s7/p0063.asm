.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, 9
test dl, cl
cmovnp cx, bx
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and bl, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
cmovns ecx, edx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
bt di, ax
cmovz rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
