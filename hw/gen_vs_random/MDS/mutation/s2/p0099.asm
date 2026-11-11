.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmovnle edi, ecx
btc rax, 106
cmovp edx, ecx
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
btr dx, cx
test ax, 4430
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and al, 14
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
or rdx, -109
jmp .bb_0.1
.bb_0.1:
or cx, -42
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test rax, -363019044
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
