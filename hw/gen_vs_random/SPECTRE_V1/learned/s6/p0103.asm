.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sub al, -89
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
xor dl, 71
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 76
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
or cl, -98
sub bl, sil
sub rcx, 13
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
