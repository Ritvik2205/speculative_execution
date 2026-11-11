.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 57
test rsi, 25
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
btr edi, edi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnb si, cx
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
cmovnbe eax, ebx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 80
btc bx, 58
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
