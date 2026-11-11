.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -108 # instrumentation
cmovnle ebx, ebx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ecx
add rcx, 39
xor di, 45
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
dec ax
cmp ecx, 60
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 58
sub sil, -99
sub di, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
