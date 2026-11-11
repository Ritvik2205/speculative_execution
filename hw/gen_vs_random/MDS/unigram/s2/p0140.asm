.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and al, -49 # instrumentation
cmovno ax, di
and cl, 40
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
cmovnbe ax, si
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnle edi, eax
test cl, 1
cmovo ecx, edi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
or si, 49
cmovnle ecx, esi
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 76
cmovnp eax, ecx
test rsi, 879594088
cmovl ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
