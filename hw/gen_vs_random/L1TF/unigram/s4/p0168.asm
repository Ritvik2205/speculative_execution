.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
sub bl, -96
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 60
bts edx, eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 8
sbb dl, dl
add al, 80 # instrumentation
sbb cl, cl
add bl, 89 # instrumentation
sbb al, dl
cmovbe edi, edx
imul ax, di, 22
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
