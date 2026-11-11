.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rbx, rax
xchg al, sil
lea ax, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmp dl, sil
xor al, dl
and dil, cl
xchg sil, sil
sbb dx, ax
mul si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
