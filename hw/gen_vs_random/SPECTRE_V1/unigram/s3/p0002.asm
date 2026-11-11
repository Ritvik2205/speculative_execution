.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 74
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
cmovnb di, dx
cmovle rax, rdi
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
sub dl, cl
sbb rsi, 30
bt rax, rcx
movsx ecx, cl
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add sil, sil
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
cmovns rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
