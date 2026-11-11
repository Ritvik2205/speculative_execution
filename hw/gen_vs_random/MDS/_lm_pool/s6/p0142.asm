.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and sil, -69
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
or edx, eax
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor cl, 15
or al, -75
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
or cl, 119
bt si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
