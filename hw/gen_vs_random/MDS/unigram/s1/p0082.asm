.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and al, dl
xor edi, edi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rbx, 71
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
test eax, 758789512
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
and dl, -7
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
btc si, 8
cmovns cx, di
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
