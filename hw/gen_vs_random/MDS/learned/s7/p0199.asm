.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test bl, 65
xor dl, -19
xor al, cl
or al, 16
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or dil, cl
btc si, 43
test bl, cl
test esi, 425331143
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
