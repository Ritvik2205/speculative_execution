.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 51
or cl, al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
not dil
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
xor al, 115
xor al, 122
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or al, -22
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
test bl, al
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
