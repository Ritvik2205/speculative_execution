.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 64
sbb ebx, 16
add al, 18
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
lea eax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
