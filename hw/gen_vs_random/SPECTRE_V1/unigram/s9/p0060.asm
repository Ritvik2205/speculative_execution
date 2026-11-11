.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, -128
and bl, dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -93 # instrumentation
setnb al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 47
mul dil
imul rax, rdi, 109
or cx, 7
cmp esi, 31
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, -115
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
test ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
