.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 17
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 56
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
xchg rdx, rsi
mov di, 92
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea rdx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
setb cl
mov dil, dil
lea cx, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
