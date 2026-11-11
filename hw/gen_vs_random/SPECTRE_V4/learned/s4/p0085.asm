.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -28
sub al, dil
dec al
sub dil, 65
or eax, -646827727
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
sbb dil, 69
xor dl, -66
and bl, al
add ebx, -57
cmp edx, 4
cmp dl, 83
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
or rax, -2144083737
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
sub al, dl
sub al, bl
or esi, 32
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add bl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
