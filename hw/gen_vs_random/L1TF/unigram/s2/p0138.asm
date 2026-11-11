.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 59
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
cmovbe eax, esi
imul bx, ax
add bl, 111 # instrumentation
cmovs rcx, rcx
adc dl, -12
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 62
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add al, 42 # instrumentation
lea edx, qword ptr [rax + rdx]
lea di, qword ptr [rbx + rdi + 46]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
