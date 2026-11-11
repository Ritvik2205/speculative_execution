.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
lea dx, qword ptr [rdi + rdx + 44]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
movsx eax, sil
sub bl, -6
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb dx, ax
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
imul rax, rbx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
cmovns rbx, rdx
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
add cl, -35 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
add cl, 83 # instrumentation
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
