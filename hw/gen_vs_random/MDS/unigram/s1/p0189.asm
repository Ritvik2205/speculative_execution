.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
xor cl, -13
test eax, -675944960
btr edx, 197
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and bl, -82 # instrumentation
cmovz edi, ebx
cmovp dx, cx
or rax, rcx
test si, di
jmp .bb_0.1
.bb_0.1:
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 25
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
or cl, 6
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
cmovo rsi, rbx
cmovnb rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and dl, -87 # instrumentation
cmovo dx, si
test rax, 1214712583
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
