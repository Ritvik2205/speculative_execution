.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
add cl, bl
lea cx, qword ptr [rsi + rbx + 23]
lea di, qword ptr [rbx + rdx + 2]
sub dil, -70
xchg al, bl
xor sil, dil
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
