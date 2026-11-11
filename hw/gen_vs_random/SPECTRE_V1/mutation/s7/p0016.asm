.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
imul esi
sub cl, cl
sbb ax, -17107
cmovno di, bx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, -108
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
test al, 84
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
sub dl, 96
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
