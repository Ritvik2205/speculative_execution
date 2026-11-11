.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovnle edi, ecx
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test ax, 18697
btr dx, cx
or rdx, -48
btc rax, 106
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and al, -103
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmovp edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
or cx, -42
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and ecx, edx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test rax, 1214712583
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
