.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or dil, sil
and dl, dl
or bl, dl
jmp .bb_0.1
.bb_0.1:
or al, -61
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 75
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test edx, -1561252782
or ax, -23697
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
