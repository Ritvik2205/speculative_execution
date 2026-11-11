.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or dl, cl
setns dl
cmovl rsi, rcx
test edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle ax, si
not bx
sub ax, 94
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
and bl, al
or rdi, rcx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
sbb edx, edx
and di, dx
test al, 70
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
or rdi, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
