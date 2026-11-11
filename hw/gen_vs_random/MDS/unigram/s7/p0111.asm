.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
and ecx, -104
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 58
and rax, rax
or al, 74
test dl, -95
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and al, al
cmovnbe rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 22
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
btc bx, 104
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and dl, -48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
cmovo esi, ecx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
