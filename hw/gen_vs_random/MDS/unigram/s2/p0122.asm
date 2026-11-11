.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
cmovs si, dx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
or ecx, eax
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 34
cmovbe ax, ax
and al, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
jmp .bb_0.1
.bb_0.1:
bt ecx, 55
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 58
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
btc ax, 31
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
