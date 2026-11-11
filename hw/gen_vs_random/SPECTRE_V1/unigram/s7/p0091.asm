.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test ebx, -1465665890
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
cmovle edx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
or dl, 41
sub ecx, 79
cmp al, 77
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 36
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
setl bl
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
