.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test ax, 18697
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmovp edx, ecx
and al, 82
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
btc rax, 59
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
or rdx, -109
cmovnle edi, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
btr dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test rax, 1207043993
and ecx, edx
or cx, 49
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
