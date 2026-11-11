.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov si, 9258
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 46
sub rbx, -128
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dil
mov rax, rbx
imul bx, dx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, 90
add al, dl
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 62
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
cmovb ecx, ecx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add rdx, 61
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 8
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
