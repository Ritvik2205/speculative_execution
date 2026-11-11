.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
movzx rdi, dl
sub al, bl
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
cmp dil, dil
add dl, 109 # instrumentation
cmovnb rbx, rcx
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
neg bl
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rbx + rax + 42155]
lea ecx, qword ptr [rcx + rsi + 65505]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
mul rdi
and rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
