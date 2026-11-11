.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 31
cmovnle ecx, edi
cmp cl, -71
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
sbb rbx, 8
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sbb rdi, 110
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 24
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 10
lea rsi, qword ptr [rax]
and dl, -98
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
