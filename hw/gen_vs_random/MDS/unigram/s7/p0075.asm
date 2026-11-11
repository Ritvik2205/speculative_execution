.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
or ecx, 40
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
bt esi, edx
bt si, bx
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
cmovns ebx, ebx
test al, cl
btr ebx, edi
and cl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
xor rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 26
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
or bl, -54
cmovo edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
