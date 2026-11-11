.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
xor al, al
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, -119
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or dl, -18
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
or al, -8
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
or dl, -18
or rax, 1749358813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
