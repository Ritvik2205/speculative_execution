.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 39
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
cmovz rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and dl, -59 # instrumentation
cmovbe si, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovns ax, di
or sil, -49
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
btc rsi, rsi
cmovno rsi, rbx
and dil, -67 # instrumentation
cmovnle rcx, rdi
bt ax, 76
cmovl bx, si
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
