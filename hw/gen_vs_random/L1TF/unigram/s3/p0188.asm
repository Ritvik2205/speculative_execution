.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
nop
setz bl
xor sil, sil
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and al, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
or edi, esi
mov dl, sil
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmp rcx, 41
lea dx, qword ptr [rsi + rcx + 45165]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
