.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 124
and bl, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
cmovno rsi, rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and dl, 32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
xor bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
btc bx, 58
xor cl, 24
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
