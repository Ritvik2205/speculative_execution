.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and cl, 127
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovnb di, cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
bt rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 33
jmp .bb_0.1
.bb_0.1:
xor bx, di
and ax, bx
mov si, 32
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
xor al, 78
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
cmovno di, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
cmovno ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
