.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and al, 87
xor al, -4
or cl, dl
jmp .bb_0.1
.bb_0.1:
or al, 54
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and si, -121
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
jmp .bb_0.2
.bb_0.2:
or al, sil
or ax, -6817
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
