.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rdi, rdi
and al, cl
test dl, al
cmovnz bx, ax
cmovle di, cx
or cl, 119
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and sil, 47 # instrumentation
cmovnp esi, edi
and al, 8 # instrumentation
cmovz rsi, rax
cmovns rsi, rdi
test rax, 1949278494
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
test eax, 343548072
test dl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
xor dil, -5
cmovnbe ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
