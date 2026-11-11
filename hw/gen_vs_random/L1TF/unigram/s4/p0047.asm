.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, cx
mov cl, sil
add sil, 6 # instrumentation
cmovl eax, esi
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
or rcx, 62
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
imul edx, ebx
add bl, 92 # instrumentation
sets dl
xor bl, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
cmp cl, 57
add dil, -40 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovnle ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
