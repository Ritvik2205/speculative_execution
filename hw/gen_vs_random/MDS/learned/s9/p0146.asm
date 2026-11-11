.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
test sil, 41
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor cl, bl
xor dl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
btr edx, ecx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and dl, -73
and sil, 74
test rdx, 53
xor cl, bl
and eax, 33
and ax, -122
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
