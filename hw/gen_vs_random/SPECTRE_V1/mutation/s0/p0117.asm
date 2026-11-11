.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], -31
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
test sil, -31
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
lea edi, qword ptr [rdx + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
cmovle si, si
and bl, sil
bts cx, cx
add al, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
sub dl, al
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
