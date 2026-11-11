.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
or cl, 119
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
or sil, -78
and cl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test edx, -372470678
xor al, bl
and sil, 89
test eax, 343548072
xor bl, dil
test al, bl
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
