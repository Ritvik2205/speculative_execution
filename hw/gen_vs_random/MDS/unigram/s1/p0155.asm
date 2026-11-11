.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
or sil, -49
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or al, 30
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
cmovle esi, edi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor esi, 24
bt eax, edx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
bt bx, di
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
