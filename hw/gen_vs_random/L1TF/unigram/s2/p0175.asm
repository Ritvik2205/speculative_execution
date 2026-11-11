.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, al
add al, 80 # instrumentation
sbb sil, sil
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
btr si, bx
imul ax
xor eax, -603819833
movsx eax, bl
xor bx, 51
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 37
lea ax, qword ptr [rbx + rdi + 96]
adc ecx, 6
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
setb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
