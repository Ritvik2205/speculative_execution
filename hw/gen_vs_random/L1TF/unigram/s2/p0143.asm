.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx, rdx, 44
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
inc edx
add cl, -34 # instrumentation
setl bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
neg eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
add sil, dl
movzx esi, cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
lea rbx, qword ptr [rdi + rdx]
movzx ebx, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
add dl, -48 # instrumentation
lea eax, qword ptr [rax + rcx]
cmovbe edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
