.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
cmovnbe ecx, ebx
or esi, edi
cmovno si, bx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
xor dil, -70
or si, 0b1000000000000000 # instrumentation
bsf bx, si
bts di, cx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 45
or dl, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and dl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
