.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
sub rax, rbx
mov bx, cx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
not dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
xor al, dl
and ebx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 15
dec dx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
setz bl
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
