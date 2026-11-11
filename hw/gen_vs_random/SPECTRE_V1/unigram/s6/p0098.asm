.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
add dil, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 40
test al, 34
cmp di, 21
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, 77
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 3
not rcx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
xor sil, al
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
