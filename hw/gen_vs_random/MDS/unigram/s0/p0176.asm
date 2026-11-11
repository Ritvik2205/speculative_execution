.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
test rcx, rbx
and bl, 68
and bl, -123 # instrumentation
cmovnp cx, bx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmovl ebx, ecx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
btc ecx, ebx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 70
cmovz eax, eax
cmovb cx, ax
cmovle ecx, eax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
