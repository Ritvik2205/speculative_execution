.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
lea cx, qword ptr [rcx + rsi + 59]
add cl, 44 # instrumentation
cmovns dx, cx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
sbb al, -4
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
imul ax, si, 51
or al, sil
imul ax, dx, 62
cmovo ecx, eax
cmp si, 65
cmp cx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
