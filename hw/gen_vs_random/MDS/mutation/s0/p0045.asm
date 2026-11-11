.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
btr edx, ebx
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and dl, -127 # instrumentation
cmovno esi, ebx
bts rcx, rbx
cmovle rcx, rcx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
btr bx, dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
bts ecx, 184
cmovb bx, si
cmovbe rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
