.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor bl, -88
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 54
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and dl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and ax, 31082
btc rdi, 221
cmovnb ax, di
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
