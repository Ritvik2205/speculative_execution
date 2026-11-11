.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
add bl, -116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
neg rbx
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmp esi, -52
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 83
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
neg bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
