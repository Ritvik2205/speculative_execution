.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
imul esi
sbb ax, -17107
sub cl, cl
cmovno di, bx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
sbb eax, 1392087754
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
sub dl, -48
test al, 59
movsx ebx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
