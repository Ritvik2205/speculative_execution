.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -50
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sub rdi, 7
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 68
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
cmovz ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, 100 # instrumentation
lea dx, qword ptr [rbx]
movzx edi, bl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
cmovl ecx, eax
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
