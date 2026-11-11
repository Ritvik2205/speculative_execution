.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rdi, rcx
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 25
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and dx, 59
dec rbx
mov dil, dil
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
cmovb dx, dx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
