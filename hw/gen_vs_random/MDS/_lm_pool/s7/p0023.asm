.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
not dil
xor sil, al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor di, -83
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
or al, dil
xor al, -89
and dl, -73
and cl, -71
and eax, -85386306
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
