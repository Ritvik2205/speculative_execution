.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
or cl, 105
xor rdx, 122
test rdx, rdi
lea eax, qword ptr [rsi + rsi + 50]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
not al
lea ax, qword ptr [rcx + rbx + 69]
test dil, -126
xor di, 50
or al, -57
lea rax, qword ptr [rcx + rbx]
test bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
