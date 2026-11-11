.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
mov bl, 35
lea bx, qword ptr [rcx + rdx + 50]
xor cx, 113
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
