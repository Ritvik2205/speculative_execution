.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
xor dx, 78
or sil, -78
or al, dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 40
or al, bl
xor al, 34
and dil, 125
or bl, -54
test al, 91
and dl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and al, 14
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
or cl, al
cmovnbe rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
