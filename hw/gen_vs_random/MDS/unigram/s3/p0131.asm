.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
cmovp cx, cx
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or rbx, -124
or dx, 27
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and dl, 107 # instrumentation
cmovs ebx, edx
or sil, -8
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
xor cl, al
or bl, bl
bt si, bx
btr si, 77
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
bts dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
