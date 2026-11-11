.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 75
and al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or bl, 43
or bl, cl
and rax, -1931765367
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, -731384280
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
