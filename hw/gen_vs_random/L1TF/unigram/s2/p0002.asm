.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rcx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
movsx eax, al
seto sil
add bl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
sub cx, 31
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 48
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
dec ax
cmovp esi, ecx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
imul ax, di, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
