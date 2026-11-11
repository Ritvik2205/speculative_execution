.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, sil
btr bx, 98
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add cl, 29 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
movsx cx, sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
xor al, -41
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 90
bt cx, si
adc si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
