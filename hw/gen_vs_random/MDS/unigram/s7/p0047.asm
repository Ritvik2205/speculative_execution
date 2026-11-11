.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
cmovle bx, di
or dl, -97
btr rcx, 68
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
and cl, -76 # instrumentation
cmovl ax, dx
bt rsi, rsi
and ebx, 97
cmovs esi, ebx
cmovz eax, eax
btr di, 89
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
jmp .bb_0.1
.bb_0.1:
btr eax, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and bl, 65 # instrumentation
cmovnbe dx, cx
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
