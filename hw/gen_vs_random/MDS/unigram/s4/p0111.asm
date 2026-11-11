.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
not dl
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
cmovz rcx, rbx
xor dx, 58
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rdx, 39
xor dl, cl
jmp .bb_0.1
.bb_0.1:
cmovnle di, di
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
xor rbx, 89
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 30
btr rdi, 129
cmovle ecx, edi
cmovp eax, esi
cmovl dx, ax
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
