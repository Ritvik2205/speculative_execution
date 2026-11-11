.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, -731384280
xor al, 9
and si, -121
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and bx, 21
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and bl, dl
or ebx, -104
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and cx, -2
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
bt bx, cx
btr si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
