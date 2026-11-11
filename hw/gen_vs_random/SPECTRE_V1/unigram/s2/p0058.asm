.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
add bl, 73 # instrumentation
mov rbx, 88
lea bx, qword ptr [rbx]
lea cx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
sub dl, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
imul cx, di, 5
imul rcx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
lea si, qword ptr [rax + rdx]
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
