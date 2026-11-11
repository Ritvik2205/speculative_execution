.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 106
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
or di, -18
xor bx, di
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
bts rcx, 115
cmovo rax, rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 18
xor edi, edi
or bl, sil
xor dl, dl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 51
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
