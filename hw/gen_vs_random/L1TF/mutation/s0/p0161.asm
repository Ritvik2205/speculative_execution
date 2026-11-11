.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub al, bl
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
movzx rdi, dl
cmp dil, dil
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
neg bl
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
xor cl, cl
add dl, 109 # instrumentation
cmovnb rbx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, rax
mul rdi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
lea edi, qword ptr [rbx + rax + 42155]
lea ecx, qword ptr [rcx + rsi + 60489]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
