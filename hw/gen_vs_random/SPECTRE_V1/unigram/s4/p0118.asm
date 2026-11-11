.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 84
imul ax, si, 123
add rax, -704585563
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe rcx, rax
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
add al, 110 # instrumentation
add dil, -22 # instrumentation
cmovnz edi, edi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
lea ecx, qword ptr [rdx + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
cmovnb rdx, rbx
mov edi, 52
and bl, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
