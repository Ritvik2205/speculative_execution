.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
or cl, cl
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor dil, -70
and rdx, rcx
test al, dl
and dl, al
and di, 99
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
test eax, -1634766116
or rax, 1020005579
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
