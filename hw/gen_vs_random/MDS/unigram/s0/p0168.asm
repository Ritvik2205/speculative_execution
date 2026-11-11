.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rsi, rax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
or dl, cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
cmovnz ebx, ecx
cmovl ecx, esi
xor cl, 15
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
test dil, dl
cmovz ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
btc rsi, rcx
and bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
