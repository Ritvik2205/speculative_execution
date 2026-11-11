.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
bts rsi, rcx
and dx, 60
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or sil, -78
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and bl, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and ax, 339
or al, -75
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
