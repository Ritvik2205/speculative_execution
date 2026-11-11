.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 47
or dl, 22
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
xor ecx, 22
and al, 33 # instrumentation
cmovnle edi, edx
cmovns rdx, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
bt rax, rdx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or cl, 100
cmovnz ecx, edi
bts edi, ecx
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 26
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
or cx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
