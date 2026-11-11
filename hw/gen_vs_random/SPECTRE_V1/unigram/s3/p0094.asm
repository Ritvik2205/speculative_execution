.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
sbb rdx, -34
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add sil, -68
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
add dil, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
cmp bx, cx
xor al, -19
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
cmovnbe edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
