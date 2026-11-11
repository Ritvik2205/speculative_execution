.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ax, si
cmovs esi, ebx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and cl, -76 # instrumentation
cmovl bx, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
or si, -12
bts rdi, rcx
cmovs edx, eax
cmovl eax, esi
btc rdi, 221
cmovbe eax, ecx
xor cl, dl
btr rsi, 207
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
