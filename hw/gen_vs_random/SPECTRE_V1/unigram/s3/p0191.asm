.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
lea ecx, qword ptr [rdi + rdx + 26]
lea dx, qword ptr [rcx + rbx + 38]
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
mov dl, cl
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 27
or al, al
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
imul bl
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
cmovnbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
