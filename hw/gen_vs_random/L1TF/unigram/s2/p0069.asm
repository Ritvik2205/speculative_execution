.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 51
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
cdq
or sil, al
jmp .bb_0.1
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
xchg ebx, ecx
add bl, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
or al, -2
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 97
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
