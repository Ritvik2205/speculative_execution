.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 3
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
xchg dil, dil
lea rax, qword ptr [rsi + rdx + 1]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 33
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
add sil, al
xchg rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
adc ebx, ebx
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
