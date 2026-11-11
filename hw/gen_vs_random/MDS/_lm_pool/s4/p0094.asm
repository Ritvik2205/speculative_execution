.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 91
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or rbx, -77
bts rsi, 206
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
bt bx, di
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
