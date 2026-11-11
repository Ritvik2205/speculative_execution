.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 54
adc rdi, 26
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
add cl, -84 # instrumentation
xchg rsi, rax
add al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
setnb sil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
sbb cl, al
sub dl, 41
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
setnle bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
