.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
btr ax, bx
or al, -17
and cl, -111
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test ecx, -1843375753
or cl, al
test al, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
xor cl, 98
and sil, 89
test bl, dl
and cl, -111
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
