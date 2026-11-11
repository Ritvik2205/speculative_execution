.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 59
and al, -55
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 66
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and al, 75
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
test dl, 27
xor dil, -124
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
xor rdx, -59
or al, bl
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
