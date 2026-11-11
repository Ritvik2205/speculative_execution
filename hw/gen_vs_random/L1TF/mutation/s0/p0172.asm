.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
sub al, bl
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
add dl, 109 # instrumentation
cmovnb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor cl, cl
sbb al, bl
cmp dil, dil
movzx rdi, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rbx, rax
lea ecx, qword ptr [rcx + rsi + 65505]
lea edi, qword ptr [rbx + rax + 42155]
mul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
