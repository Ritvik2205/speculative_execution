.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, di
xor rdx, 122
cmp rax, 108211639
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 14
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
lea rsi, qword ptr [rax + rcx + 89]
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
