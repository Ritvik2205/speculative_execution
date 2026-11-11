.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
add dl, 59 # instrumentation
cmovns ecx, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
cmovz ecx, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 59
lea ax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
mov si, ax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
