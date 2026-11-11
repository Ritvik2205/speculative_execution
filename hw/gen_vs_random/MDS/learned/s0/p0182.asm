.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1725503461
not bl
xor al, -4
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
xor dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and cx, -8
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test rax, 337705873
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and al, 75
xor bl, -102
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
