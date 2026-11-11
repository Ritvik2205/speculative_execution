.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
sbb al, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
btc eax, 14
add ebx, -116
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 40
and esi, esi
bswap rsi
add sil, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
xor eax, -1721938664
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
sbb ebx, 73
lea bx, qword ptr [rax + rcx + 18]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
