.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
movzx dx, al
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
sub bx, cx
cmovnbe rdx, rsi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
lea esi, qword ptr [rsi + rdi + 38]
neg bl
lea di, qword ptr [rdx + rdi + 84]
sub dx, 34
lea ax, qword ptr [rax]
lea si, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
