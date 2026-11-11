.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
not edx
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 100
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
btc rcx, rdi
inc esi
and cl, 18
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and dl, dil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovnz di, ax
or dl, bl
add dil, dil
movzx esi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
