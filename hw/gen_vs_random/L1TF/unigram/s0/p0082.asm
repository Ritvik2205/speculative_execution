.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdi]
cmovz rdx, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
movsx esi, dx
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
sbb rbx, -117
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovo rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
add edx, 56
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 44
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
or ebx, edi
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
