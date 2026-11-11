.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -17837
add cl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 43
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
sub bl, -19
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -92 # instrumentation
cmovs ax, cx
movsx bx, cl
btr ebx, 87
and dl, -92
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
