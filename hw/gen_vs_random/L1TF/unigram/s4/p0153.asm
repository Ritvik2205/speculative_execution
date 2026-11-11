.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
setl bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 47
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
imul al
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovo rax, rax
cmovnbe cx, dx
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
sbb si, 11
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
setbe al
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
