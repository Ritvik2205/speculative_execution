.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
imul al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea di, qword ptr [rax]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, -31
jmp .bb_0.2
.bb_0.2:
test sil, 97
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
lea ax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
