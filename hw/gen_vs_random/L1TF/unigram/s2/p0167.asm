.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
neg dl
lea rax, qword ptr [rdi + rdx]
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
add bl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], edi
lea rcx, qword ptr [rax + rcx + 59]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 87
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rbx
mov sil, 54
add dil, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
