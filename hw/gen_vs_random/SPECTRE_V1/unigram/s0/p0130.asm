.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 62
setnle cl
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 78
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
cmp sil, bl
test bl, -8
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
test ax, -13885
cmp edx, esi
add dl, 38 # instrumentation
setp sil
sub al, al
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
