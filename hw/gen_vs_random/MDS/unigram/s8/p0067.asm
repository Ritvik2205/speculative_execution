.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
and bl, 65 # instrumentation
cmovnbe ax, cx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
xor sil, sil
btc rax, rax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test eax, edx
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
jmp .bb_0.1
.bb_0.1:
or sil, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 27
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and al, -33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
