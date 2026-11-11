.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
cmovle di, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovnp dx, di
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and al, dl
jmp .bb_0.1
.bb_0.1:
and dl, 84 # instrumentation
cmovle ax, si
btc rbx, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
or al, 54
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and cl, -19
cmovl di, si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmovle rcx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovz si, di
or al, al
btr ebx, 0
and cl, 114 # instrumentation
cmovz dx, si
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
cmovnle cx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
