.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 59
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
imul esi, eax
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 65
and al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
mov dl, dil
test cl, -62
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
