.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 19
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
inc dl
xor ax, si
neg rbx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
dec al
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
lea rdx, qword ptr [rcx + rbx + 89]
cmovl edi, eax
movzx di, bl
sub sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
