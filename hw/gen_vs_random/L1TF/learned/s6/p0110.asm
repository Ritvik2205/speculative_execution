.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
and eax, -409673666
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 79
lea rax, qword ptr [rdx + rbx + 92]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
