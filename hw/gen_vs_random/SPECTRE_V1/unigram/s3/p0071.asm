.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 50
add al, -94 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 96
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
lea di, qword ptr [rax + rsi + 85]
or cl, cl
lea rdi, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
mov dl, sil
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
mov dl, 100
sbb rbx, 57
bt edi, edx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
