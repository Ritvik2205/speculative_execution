.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rsi, bl
lea rax, qword ptr [rcx]
sub esi, -120
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
movzx ecx, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 74
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rsi]
xor edx, 65
lea rax, qword ptr [rsi + rdx + 52]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
cmovs ax, cx
lea cx, qword ptr [rsi]
test cl, al
cmovnbe edx, esi
cmovnle rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
