.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 58
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
test eax, esi
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rdx + 43]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
btr di, bx
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
