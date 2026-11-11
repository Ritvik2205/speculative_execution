.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
or edi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
btr si, 52
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
jmp .bb_0.1
.bb_0.1:
and ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test ax, si
cmovp cx, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
cmovnbe esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rcx, rcx
cmovbe edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
