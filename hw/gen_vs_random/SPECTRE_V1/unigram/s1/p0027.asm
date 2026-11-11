.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, dil
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
lea ebx, qword ptr [rax + rbx + 65]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
add dl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
test bx, 4
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and bl, sil
lea dx, qword ptr [rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
imul edx, ecx, 44
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
