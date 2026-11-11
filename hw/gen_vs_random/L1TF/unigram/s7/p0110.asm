.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125
lea di, qword ptr [rdx + rax]
cmovle bx, si
lea rax, qword ptr [rcx + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rbx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rbx]
not eax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 12
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax + rbx]
movsx bx, sil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 79
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
movsx edx, si
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
cmovl edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
