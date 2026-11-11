.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
imul esi
sub cl, cl
sbb ax, -17107
cmovno di, bx
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
test al, -126
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
sub dl, 71
sbb eax, 1830317432
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx + rdi + 22131]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
mov dl, cl
and dil, dil
cmovs cx, dx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
