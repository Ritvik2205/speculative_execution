.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor rsi, -117
and rdi, 22
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test dl, cl
xor al, bl
test rsi, 35
or dil, 12
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
xor cl, 55
or cl, 7
xor ax, 31969
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test esi, 425331143
test eax, -675944960
btr bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
