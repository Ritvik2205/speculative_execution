.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, 75
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
xor cl, al
xor di, -116
cmovno ecx, edx
bt dx, ax
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
test al, 74
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and bx, dx
cmovs rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
cmovz rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
