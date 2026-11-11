.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, cx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
btc rax, 106
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
or rdx, -48
cmovp edx, ecx
and al, 87
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
cmovnle edi, ecx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
test ax, 18697
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
test rax, -708244380
and ecx, edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or cx, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
