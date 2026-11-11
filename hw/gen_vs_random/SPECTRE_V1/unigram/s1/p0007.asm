.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
setns cl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
mul dil
lea rbx, qword ptr [rsi + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 86
cmp sil, 25
or sil, 52
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
