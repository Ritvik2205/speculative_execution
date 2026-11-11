.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
xor sil, sil
lea rdx, qword ptr [rdi + rdx + 64]
sub rsi, 4
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
btr ebx, ecx
xchg ax, bx
cmovs rdi, rsi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and edi, edx
adc sil, 67
jmp .bb_0.1
.bb_0.1:
sub dil, 95
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
xor cl, 53
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
