.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
mov al, cl
lea ax, qword ptr [rdx + rdi]
cmp rcx, 55
cwd
and dx, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rax + rdi]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 33
lea dx, qword ptr [rax + rax + 17]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
