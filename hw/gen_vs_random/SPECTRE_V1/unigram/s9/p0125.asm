.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
add sil, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
bswap eax
cmp dl, 71
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and cx, dx
add sil, 113 # instrumentation
setnb sil
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
