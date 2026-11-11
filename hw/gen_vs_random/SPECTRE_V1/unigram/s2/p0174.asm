.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
or sil, -27
cmp ecx, eax
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
mov bx, 55
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
lea rsi, qword ptr [rsi + rdx + 39]
bt rax, 24
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
