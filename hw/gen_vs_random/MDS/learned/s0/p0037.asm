.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
xor di, -116
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
xor cl, al
cmovno ecx, edx
bt edx, 75
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
or sil, -8
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
cmovs rbx, rcx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
