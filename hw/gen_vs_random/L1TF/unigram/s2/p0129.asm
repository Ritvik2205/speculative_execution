.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, dx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
sbb dl, 10
xor ax, -27503
setnb cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rbx
or bx, 93
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 19
movsx ebx, bl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
setp dl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
