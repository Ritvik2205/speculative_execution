.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
setnb dil
add si, di
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub cx, 33
cmp ecx, ebx
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
setno al
mov edi, 64
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
movsx rbx, si
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
