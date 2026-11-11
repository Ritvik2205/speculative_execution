.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bl, 100
and al, bl
or bl, al
test sil, -96
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test ecx, -1843375753
test sil, 41
or al, 37
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor al, 99
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test rax, 1000448998
or al, cl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
