.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and dl, -127 # instrumentation
cmovno esi, ebx
btr bx, dx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
cmovle rcx, rcx
cmovnbe rcx, rdi
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
btr edx, ebx
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovb bx, si
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
cmovbe rcx, rcx
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
bts rcx, rbx
bts ecx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
