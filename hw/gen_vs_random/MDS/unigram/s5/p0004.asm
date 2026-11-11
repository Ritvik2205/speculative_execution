.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
btc ebx, 149
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
btr rsi, 207
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and al, al
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
bts rbx, 25
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or dil, dil
and rbx, 65
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and al, 84 # instrumentation
cmovbe ax, di
cmovz dx, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 11
and al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
