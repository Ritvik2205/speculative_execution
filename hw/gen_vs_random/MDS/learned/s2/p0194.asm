.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or cl, dl
or dl, 85
test al, 127
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
or al, al
jmp .bb_0.2
.bb_0.2:
or sil, bl
test al, sil
xor dl, al
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or al, 74
and edx, -44
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
