.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
add dl, 109 # instrumentation
cmovnb rbx, rcx
neg bl
xor cl, cl
sub al, bl
cmp dil, dil
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
movzx rdi, dl
jmp .bb_0.1
.bb_0.1:
mul rdi
and rbx, rax
lea edi, qword ptr [rbx + rax + 42155]
lea ecx, qword ptr [rcx + rsi + 65505]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
