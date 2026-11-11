.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 43
movzx rbx, ax
test cl, -120
sub al, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 55
cmovl ecx, eax
adc eax, 56
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 35
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
cmp rdi, rdx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 5
lea rcx, qword ptr [rbx + rbx + 11064]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
