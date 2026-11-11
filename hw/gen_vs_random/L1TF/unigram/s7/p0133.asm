.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, ebx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 40
test rbx, rcx
lea cx, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
test bl, dl
test dil, al
and dil, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
lea dx, qword ptr [rsi + rdi + 47468]
mov al, dl
cmovnz edx, esi
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
