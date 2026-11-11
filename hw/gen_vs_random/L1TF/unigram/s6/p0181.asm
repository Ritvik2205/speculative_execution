.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdx, rsi
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
sub dil, -39
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rsi]
mov ecx, -1856082135
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
setnbe sil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
add al, 80 # instrumentation
sbb dil, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
cmovns ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
