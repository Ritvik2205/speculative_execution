.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 66
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
sbb bl, dl
movzx ecx, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
inc cl
lea si, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
sbb eax, eax
cmovo dx, cx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add al, sil
btr bx, dx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 27
and rax, 363226538
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
