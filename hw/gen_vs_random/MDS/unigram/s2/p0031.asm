.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmovns ax, cx
btc rax, rax
or al, 74
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 6
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
or sil, dil
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
xor sil, -126
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and sil, dl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
or di, 0b1000000000000000 # instrumentation
bsf di, di
not al
and al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
