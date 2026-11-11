.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
xor rax, -1499464454
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and dil, -39
or ax, 127
xor al, sil
and sil, -9
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or bl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor al, -19
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
