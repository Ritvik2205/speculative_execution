.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
cmp bx, 49
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
inc rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
xor eax, 55
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 21
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 48
sub si, 32
xor sil, -33
lea rcx, qword ptr [rsi]
mul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
