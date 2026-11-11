.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and al, al
cmovnb ax, cx
movsx edx, bl
setz cl
cmovnz ax, ax
btr eax, 47
add al, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
or dl, -67
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
cmovnle si, si
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
