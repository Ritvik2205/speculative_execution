.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
or cl, 30
and dl, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bx, 30
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor rsi, -117
test al, -7
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
test bl, -14
not al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 55
xor cx, -18
and rax, 1250429750
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
