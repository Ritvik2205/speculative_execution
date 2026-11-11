.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 20
or rax, 1447934463
mul bl
xor al, al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 68
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
cmovle dx, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
setbe sil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
not dil
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
test sil, 47
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
