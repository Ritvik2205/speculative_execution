.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
add bl, 119 # instrumentation
cmovle bx, ax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
cmovs di, ax
lea ebx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
test dl, dil
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
cmp sil, al
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
add cl, -94 # instrumentation
setnb dil
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
