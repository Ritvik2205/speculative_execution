.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle bl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
movsx ecx, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
bswap eax
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
sbb ax, si
sbb dl, sil
cmovz rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 27
add dl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
cmovb dx, cx
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
