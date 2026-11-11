.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
sub eax, 132782095
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
cmp sil, -110
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
lea edx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
lea dx, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
not eax
lea rdx, qword ptr [rdi + rbx + 6421]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
