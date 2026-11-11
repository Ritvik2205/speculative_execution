.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 51
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
lea ax, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
or dl, bl
xor al, dl
not bl
and dl, dl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
or al, sil
and cl, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
