.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or cl, 30
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or sil, -78
or rax, -141551502
or al, dl
bts rbx, 25
xor ax, 31969
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
