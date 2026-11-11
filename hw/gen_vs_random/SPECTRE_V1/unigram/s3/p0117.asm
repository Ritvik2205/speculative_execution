.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rbx + rbx + 35]
cwde
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
dec rdx
cmovp edi, ecx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bt ecx, 198
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
setb bl
cmovp eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
lea bx, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
sets sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
