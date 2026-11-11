.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
jmp .bb_0.1
.bb_0.1:
cmovnle rdi, rax
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
cmovle rbx, rcx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
cmovnbe edx, edi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
cmovl ax, bx
btr si, di
cmovl bx, ax
xor rax, -1657511731
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
and dil, sil
cmovnbe ebx, ecx
test sil, dil
or al, -24
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
