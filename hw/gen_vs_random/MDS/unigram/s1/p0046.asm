.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, -59
bt dx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
test rsi, 68
test bl, sil
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
or bl, bl
bts di, 73
jmp .bb_0.1
.bb_0.1:
btr rcx, 15
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
test bl, 65
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and edx, -44
and cl, -103 # instrumentation
cmovbe cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and bl, 8 # instrumentation
cmovz rdi, rbx
cmovl edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
