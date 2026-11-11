.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 1857129931
test rdx, 70
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
cmovl dx, si
cmovnb si, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
test ax, 6779
btr cx, dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
test sil, sil
xor ax, -12492
xor al, sil
cmovle ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
