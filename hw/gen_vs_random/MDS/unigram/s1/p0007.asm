.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and bl, 109 # instrumentation
cmovs si, dx
cmovnb rdi, rdx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and dl, -73
xor ecx, 8
and cl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and dl, 57 # instrumentation
cmovnb bx, ax
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rdx, 19
test al, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
