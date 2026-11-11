.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
inc esi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
or al, sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
cmp ax, -11439
xchg dil, al
test eax, 133988823
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
