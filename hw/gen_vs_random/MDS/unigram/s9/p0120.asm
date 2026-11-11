.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle bx, bx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
test al, 22
cmovle di, bx
cmovnbe rax, rdi
and dil, al
or dl, -8
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and cl, 68 # instrumentation
cmovns ax, cx
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
cmovnl eax, ebx
btr edx, edx
bts cx, 191
and dl, -59 # instrumentation
cmovbe ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
btr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
