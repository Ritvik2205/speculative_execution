.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
adc al, dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
mul rdi
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
cmovnbe dx, dx
cmp al, bl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
cmovb bx, bx
inc bl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
and si, ax
cmovp ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
