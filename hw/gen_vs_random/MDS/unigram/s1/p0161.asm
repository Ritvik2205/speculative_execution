.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
cmovle si, cx
and edx, -44
cmovo rcx, rcx
bt si, cx
and dl, -41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmovz edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and ebx, 47
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
cmovz cx, cx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
test rcx, -613256812
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
cmovz rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
