.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rdi
add dl, -104 # instrumentation
lea rdx, qword ptr [rbx + rdi + 61]
adc dl, al
add cl, 46 # instrumentation
sbb rcx, 25
sub eax, -882981501
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
or cl, dl
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
