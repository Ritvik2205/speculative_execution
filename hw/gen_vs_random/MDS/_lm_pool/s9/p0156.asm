.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
test al, bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or dil, -76
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
bt cx, bx
xor rsi, -117
or sil, dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and cl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
