.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
cmovo esi, esi
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
cmovnbe ecx, ebx
bt si, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor al, 99
and bl, 107 # instrumentation
cmovbe bx, ax
cmovz di, di
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rcx, -63
test sil, 17
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
test rdi, 46
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
xor dl, 40
and ax, di
and cl, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
