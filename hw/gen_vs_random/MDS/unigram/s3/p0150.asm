.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
bts rax, 77
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
cmovb dx, dx
or ebx, edx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
xor dl, 40
not bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
cmovz eax, ebx
and bl, 21 # instrumentation
cmovb ax, bx
or ax, 30524
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 90
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
