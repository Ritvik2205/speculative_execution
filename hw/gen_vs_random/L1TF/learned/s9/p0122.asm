.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
cmovnle rdx, rbx
sub sil, -99
or sil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, -31327
lea edi, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
