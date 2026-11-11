.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
cmovnb rdi, rdi
test dl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or ax, 30524
and dil, -39
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and bl, 45 # instrumentation
cmovnb dx, di
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, 1207043993
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dl, 16 # instrumentation
cmovle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or ax, -20176
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
