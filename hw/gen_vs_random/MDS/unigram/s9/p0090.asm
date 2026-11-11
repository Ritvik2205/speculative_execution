.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1252846009
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 54
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
cmovnb si, di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and bl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 65
jmp .bb_0.1
.bb_0.1:
btc bx, 58
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
cmovnbe rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
test edi, esi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 49
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rdi, 4
or dil, 12
cmovz rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
