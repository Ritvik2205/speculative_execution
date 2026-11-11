.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, bl
and rsi, rsi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 63
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 33
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 92
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor bl, al
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
xor bl, bl
btc rax, 106
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
