.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
test rdx, 22
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor sil, bl
xor dil, al
and al, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
or bl, 100
test cl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and bl, 38 # instrumentation
cmovno rdi, rdx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
btr di, bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test al, bl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 11
cmovbe rbx, rbx
test dl, 9
and rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
