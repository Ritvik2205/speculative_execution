.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rcx
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
cmovp dx, si
xor ecx, 42
xchg edx, ecx
test ebx, 91
add sil, -5 # instrumentation
adc bl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmovl si, cx
and al, -68
lea ebx, qword ptr [rcx + rbx + 98]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 80
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
