.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 14
add al, 56
cmovs ecx, edi
add bl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
lea ecx, qword ptr [rax + rax + 9]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
lea rcx, qword ptr [rcx + rsi + 6]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 17
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and dl, -86
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
