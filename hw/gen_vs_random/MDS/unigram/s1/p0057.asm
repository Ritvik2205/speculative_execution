.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdi, rax
test cl, dil
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 94
test al, dil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or bl, sil
or rax, -141551502
jmp .bb_0.1
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsr di, di
xor dl, al
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
not rbx
or al, al
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
