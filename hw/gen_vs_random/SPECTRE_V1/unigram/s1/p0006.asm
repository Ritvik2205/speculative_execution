.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
setz dil
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
sub dl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
add cl, -127
lea rax, qword ptr [rcx]
cmovz eax, edx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
add al, -65
add bl, dil
cmovnb rbx, rax
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
lea ax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
