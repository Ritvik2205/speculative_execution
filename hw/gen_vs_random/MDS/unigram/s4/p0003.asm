.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 3
and bx, ax
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 91
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
bts rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
xor rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
cmovnle rcx, rdi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
bt edi, eax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
xor sil, 82
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
