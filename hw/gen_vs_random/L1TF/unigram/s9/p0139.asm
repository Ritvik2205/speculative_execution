.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
or edi, eax
xor rbx, 93
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
test bl, bl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
movsx rbx, dl
jmp .bb_0.1
.bb_0.1:
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
add bx, 37
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
add sil, 27 # instrumentation
setnle sil
add dl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
