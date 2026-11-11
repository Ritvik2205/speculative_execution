.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 98
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
add bx, 98
cmovz rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
imul rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
setp cl
btr eax, ebx
lea rbx, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
xor edi, 67
cmovno rbx, rdi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
