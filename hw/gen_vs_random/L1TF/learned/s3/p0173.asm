.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
lea ebx, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
bt rax, rsi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmp al, dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
