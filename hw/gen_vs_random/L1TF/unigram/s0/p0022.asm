.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub bl, 15
mul rcx
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
sbb ax, -14164
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
not dx
mov sil, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovp dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
