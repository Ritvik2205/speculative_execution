.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
add bl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
sbb eax, 1392087754
inc esi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
lea ebx, qword ptr [rax + rax + 18654]
or rdx, 92
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
lea ecx, qword ptr [rbx + rcx + 13259]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and dl, cl
add al, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
