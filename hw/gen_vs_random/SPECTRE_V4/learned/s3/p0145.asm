.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 65
dec sil
xchg ebx, edi
and sil, -84
cmp al, 114
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
sub bl, -98
xor dx, 7
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and cl, -118
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add al, -44
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
test al, 52
cmp al, 114
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
sbb eax, 1482884079
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or si, 85
adc al, dil
test edx, 1479885278
sbb cl, 12
cmp dl, -82
adc al, sil
and bl, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
