.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test bl, dl
lea ebx, qword ptr [rcx]
lea di, qword ptr [rbx + rdx + 3]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
