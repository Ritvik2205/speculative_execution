.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
cmovl rbx, rax
or rdi, rbx
xor bl, -27
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 69
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
or ax, -11837
or edi, -88
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
or cl, -36
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmovb rdi, rdi
and al, 54 # instrumentation
cmovnp ax, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 56
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
