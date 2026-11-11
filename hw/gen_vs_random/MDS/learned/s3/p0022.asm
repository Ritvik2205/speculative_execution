.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
xor edi, 38
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
xor cl, 93
xor al, 78
jmp .bb_0.2
.bb_0.2:
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 52
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
setle bl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 32
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
