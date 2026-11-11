.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 13
add dx, -103
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
imul al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
xor di, 18
or rdx, 92
sub cl, sil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
cmp al, sil
sub cx, 44
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
cmovns rax, rcx
cmovnl eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
