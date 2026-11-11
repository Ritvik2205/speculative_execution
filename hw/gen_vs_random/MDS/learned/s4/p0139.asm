.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 33
test dl, 25
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 24
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
bts rbx, rdx
xor rax, 24
xchg ecx, eax
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
or rcx, 91
jmp .bb_0.1
.bb_0.1:
or sil, -8
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
or al, -48
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
sbb cl, 54
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
