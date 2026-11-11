.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or ebx, edi
or di, -18
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor edi, 38
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
xor edi, -47
or cl, bl
test eax, 758789512
test bl, dl
btr rdx, 194
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 77
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
or dl, -18
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
