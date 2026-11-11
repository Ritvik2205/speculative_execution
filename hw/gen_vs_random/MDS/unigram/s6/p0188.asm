.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 74
cmovle rax, rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
btr ebx, esi
cmovnl dx, cx
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
btr di, 89
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
or ebx, esi
and bl, dl
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
xor al, bl
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
