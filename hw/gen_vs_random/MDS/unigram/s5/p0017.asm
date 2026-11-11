.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
test rax, 1978892575
and al, 42 # instrumentation
cmovz eax, ecx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
bts rbx, rdx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 65
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 28
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
bts eax, 222
bt rdi, rax
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
and ax, -4410
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 78
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
