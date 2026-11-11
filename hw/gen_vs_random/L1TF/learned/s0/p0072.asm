.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
lea esi, qword ptr [rax + rax + 93]
lea esi, qword ptr [rdi + rdi + 65]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and bl, bl
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sub rcx, -90
not ebx
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
