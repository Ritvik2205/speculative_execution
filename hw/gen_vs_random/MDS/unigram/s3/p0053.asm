.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
bts eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
cmovnle eax, ebx
test sil, 17
or al, bl
and ax, ax
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
xor dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
xor al, 9
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rdi, rbx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
