.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
bt edx, edi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 65
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
cmovz ebx, eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rcx, -63
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
btc ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
