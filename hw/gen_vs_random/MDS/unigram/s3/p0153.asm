.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
bt ax, 76
and si, -121
cmovb bx, ax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and dl, 84 # instrumentation
cmovle ax, dx
btc ebx, 149
or sil, bl
bts rax, rsi
and cl, 32 # instrumentation
cmovnbe ecx, eax
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
bt rax, 80
cmovb rcx, rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 15
btr ax, 193
bt rcx, 14
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
