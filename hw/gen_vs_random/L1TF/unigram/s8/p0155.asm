.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov si, di
add dil, 12 # instrumentation
cmovnb esi, edi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 39
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
add cl, 72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
add dil, -7
add dl, bl
add cl, -20
jmp .bb_0.1
.bb_0.1:
inc ebx
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
test bx, bx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
