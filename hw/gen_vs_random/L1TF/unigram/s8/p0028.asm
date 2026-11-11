.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
cmovp bx, di
movzx bx, dil
xchg al, al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rbx
cmp edx, 99
lea si, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
lea ebx, qword ptr [rcx + rdx]
inc esi
cmovns bx, ax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
