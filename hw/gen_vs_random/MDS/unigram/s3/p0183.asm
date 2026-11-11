.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
test rsi, rdx
and dl, 120 # instrumentation
cmovnz edi, ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test rsi, 83
jmp .bb_0.1
.bb_0.1:
not al
test dil, -80
and dl, -73
and si, -121
bts ecx, ecx
cmovb rdi, rcx
btc rdx, 73
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
