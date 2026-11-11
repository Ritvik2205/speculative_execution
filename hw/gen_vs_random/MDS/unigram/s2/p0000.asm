.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and al, dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and al, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or eax, 359647041
btc cx, 115
cmovnbe rax, rbx
xor al, sil
cmovnz ebx, edx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or edi, -88
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
bt ecx, 12
btc di, 233
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
