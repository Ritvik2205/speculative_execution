.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
lea rax, qword ptr [rdx + rcx]
add ecx, 50
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 41
and rcx, rcx
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
xchg rdi, rdx
and sil, bl
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
neg esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 60
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
