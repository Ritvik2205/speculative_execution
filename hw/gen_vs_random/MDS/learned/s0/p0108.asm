.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 61
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
xor rax, -1128378406
test esi, 1857129931
xor rax, -843636050
bt bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and al, -55
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test al, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 53
jmp .bb_0.2
.bb_0.2:
test al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 24
and rbx, 65
and al, cl
test edx, -372470678
or bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
