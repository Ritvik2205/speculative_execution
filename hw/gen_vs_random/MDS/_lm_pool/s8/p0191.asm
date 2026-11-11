.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rsi, 30
or dil, 16
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test bl, 65
bt cx, bx
or rdi, -11
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or dl, dil
or sil, bl
bt edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
