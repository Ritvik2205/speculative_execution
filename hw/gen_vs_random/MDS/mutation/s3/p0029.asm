.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp edx, ecx
and al, 14
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
btr dx, cx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmovnle edi, ecx
test ax, 18697
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or rdx, -48
btc rax, 106
jmp .bb_0.1
.bb_0.1:
or cx, 49
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and ecx, edx
test rax, -648054011
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
