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
xor edi, -47
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
bts dx, di
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovp rbx, rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
or dl, -18
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
xor eax, 73
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovns eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
