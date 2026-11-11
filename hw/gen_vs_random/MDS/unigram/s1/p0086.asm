.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
xor al, -89
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
or rdx, -109
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 65
jmp .bb_0.1
.bb_0.1:
cmovz ecx, ebx
and di, 91
and dil, -128 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and bx, bx
test al, -81
or rbx, -77
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
cmovnle rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
