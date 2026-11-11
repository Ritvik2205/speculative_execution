.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
btc dx, cx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rcx, -63
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
test di, 31
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
cmovns ecx, ecx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or rsi, 88
btr ax, dx
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
bts edx, edi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
