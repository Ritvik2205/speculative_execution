.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rdi
test cl, -123
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 61
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and dl, 1 # instrumentation
cmovl si, ax
or rdx, -109
bts rsi, 205
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and dl, 1 # instrumentation
cmovl ax, si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
