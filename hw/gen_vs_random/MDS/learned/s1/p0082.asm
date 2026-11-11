.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
or dil, -76
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor dil, al
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 19
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
