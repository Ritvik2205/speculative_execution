.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
lea di, qword ptr [rcx + rsi + 23]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 86
xor bx, si
setnb sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 68
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
sbb rax, -1477844571
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
