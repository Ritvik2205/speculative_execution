.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 82
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
lea si, qword ptr [rax + rcx]
sbb rcx, 42
or dx, -126
btr dx, bx
xor bl, bl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
lea ebx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
