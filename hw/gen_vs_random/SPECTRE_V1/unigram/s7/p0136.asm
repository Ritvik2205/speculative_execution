.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
lea ax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 89
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
inc di
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
btr rax, rbx
add cx, di
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 36
add bl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
