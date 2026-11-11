.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, 66
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
add dl, sil
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
setp al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
setl al
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 83
lea bx, qword ptr [rbx + rbx + 21]
bt edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
