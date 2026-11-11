.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and dl, 16 # instrumentation
cmovle eax, eax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or rdx, -48
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
cmovnle rdi, rbx
xor al, -89
or cl, 6
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and al, -103 # instrumentation
cmovns eax, eax
xor bx, 28
cmovbe edi, edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
xor sil, -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
