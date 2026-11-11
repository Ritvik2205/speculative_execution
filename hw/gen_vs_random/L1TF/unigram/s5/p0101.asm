.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
lea edi, qword ptr [rcx + rdi]
cmovo dx, ax
sub cl, 86
test dil, dl
jmp .bb_0.1
.bb_0.1:
setb bl
add di, di
lea ebx, qword ptr [rdx + rax + 18]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add dl, 64 # instrumentation
sbb dl, sil
btr eax, ecx
and rbx, -64
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
add bl, -77 # instrumentation
cmovns dx, bx
setnz sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
