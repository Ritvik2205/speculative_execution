.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
lea cx, qword ptr [rbx]
btr edx, 7
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
add bl, -54 # instrumentation
setz sil
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
add dil, 12 # instrumentation
lea rsi, qword ptr [rcx + rdi]
sbb sil, al
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
xor cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
