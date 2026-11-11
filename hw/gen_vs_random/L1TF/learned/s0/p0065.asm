.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rsi
lea rbx, qword ptr [rcx + rdi]
xor al, cl
or rax, 1808026647
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
