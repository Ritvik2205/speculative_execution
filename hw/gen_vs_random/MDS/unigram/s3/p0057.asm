.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ecx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
bt rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
not dil
cmovnbe ax, di
or ax, 19243
and cl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and bl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovb edi, ebx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
bt rcx, rcx
cmovnle ecx, eax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and cl, al
or di, 0b1000000000000000 # instrumentation
bsf di, di
not bl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
