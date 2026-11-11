.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
or al, -17
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or dl, -21
jmp .bb_0.1
.bb_0.1:
or al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
or al, -78
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
test rdx, 37
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test al, 66
xor bx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
