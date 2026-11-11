.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 28
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
or al, al
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovs di, dx
and rbx, 69
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
sub al, dl
btc cx, 240
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
adc eax, -1513455903
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
sbb rax, 183833426
bt si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
