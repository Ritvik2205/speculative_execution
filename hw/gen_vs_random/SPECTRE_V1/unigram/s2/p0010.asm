.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
add dl, 20 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 88
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
setnb dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
add dl, 32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
xor al, al
sbb edx, -8
lea di, qword ptr [rax + rdx + 40]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
