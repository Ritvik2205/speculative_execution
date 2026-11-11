.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
cmovnbe rsi, rsi
and esi, 59
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and cl, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
or dl, al
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovl ax, dx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
cmovnp rax, rcx
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
or bl, bl
or edx, esi
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
