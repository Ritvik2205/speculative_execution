.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 41
test cl, al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or al, 16
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 107
cmovle edx, eax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
not bl
and dl, 34 # instrumentation
cmovno edx, ebx
and cl, 122 # instrumentation
cmovl edi, edi
or di, 53
cmovnz ax, cx
and cl, -19
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
