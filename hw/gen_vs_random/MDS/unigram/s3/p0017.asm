.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 66
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 64
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 63
cmovz rcx, rbx
btr rbx, rbx
xor dil, 40
xor cl, sil
test cl, 95
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 8
or dl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovl rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdx, 98
xor cx, di
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
cmovs ebx, ecx
bt rbx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
