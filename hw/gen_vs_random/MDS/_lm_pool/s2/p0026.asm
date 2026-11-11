.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or esi, -110
xor edx, 17
and al, al
and bl, 68
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor dil, al
not sil
xor al, cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
test bl, al
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
