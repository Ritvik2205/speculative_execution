.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
sbb dl, dl
lea rdx, qword ptr [rsi]
add dl, 112 # instrumentation
adc dl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
add cl, 83 # instrumentation
setbe dil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
dec rcx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 98
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
add al, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
