.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, sil
cmovs rax, rdx
movzx rsi, dl
add al, 112 # instrumentation
cmovnle eax, ebx
xchg rcx, rax
or bl, bl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
cmovl eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
sub rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 99
add al, -34 # instrumentation
setnp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
