.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 28
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
add dil, 65 # instrumentation
cmovo rdi, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
bts ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
test rdx, rax
or cl, 105
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
