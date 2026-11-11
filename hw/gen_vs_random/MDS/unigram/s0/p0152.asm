.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
xor rax, -843636050
xor sil, 27
cmovnz cx, bx
or di, dx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
bt cx, 22
and rdi, 37
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
jmp .bb_0.1
.bb_0.1:
cmovnz rbx, rsi
cmovle ebx, ecx
and esi, 33
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
cmovl ecx, esi
test dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
