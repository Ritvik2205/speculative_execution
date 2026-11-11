.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rax + 39]
sub bl, dl
sub bl, dil
or eax, -1641258390
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
add al, sil
add bl, dl
lea esi, qword ptr [rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
