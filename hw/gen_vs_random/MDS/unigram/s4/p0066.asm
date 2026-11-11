.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
test dil, dl
cmovno ax, si
and bl, 20 # instrumentation
cmovo edx, ebx
and di, 91
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
test eax, 343548072
jmp .bb_0.1
.bb_0.1:
xor ax, -12492
not ebx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
btc ecx, 75
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
cmovbe si, dx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
