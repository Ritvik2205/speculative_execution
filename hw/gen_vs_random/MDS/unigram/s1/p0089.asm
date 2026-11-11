.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
cmovz ax, di
or ecx, esi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and al, al
btc rsi, rdx
cmovs cx, si
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
bt ecx, 30
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 78
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
cmovs ecx, eax
cmovle ax, ax
xor bx, 32
cmovs edi, edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
