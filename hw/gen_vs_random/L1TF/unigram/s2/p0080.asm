.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, 9
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
add dil, dil
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
cmp esi, 110
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
add cl, 42 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
sub cl, al
or ax, 11821
lea bx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
bt ebx, 80
and eax, esi
and ebx, 108
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
