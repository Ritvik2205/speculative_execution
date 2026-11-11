.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 32
cbw
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 21
add al, 66 # instrumentation
cmovnp ecx, eax
cmovle rbx, rdi
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
cmovbe ebx, ecx
dec bl
mul sil
inc edx
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 78
test ax, 13879
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
lea edx, qword ptr [rax + rax + 24]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
