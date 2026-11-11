.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -8
and al, -1
sub dl, 107
test dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
add cl, -9
and rdi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdi]
adc dl, cl
add al, bl
mov bl, sil
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and al, bl
add sil, al
test bl, cl
sub bx, 24
and al, -12
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
or edi, -78
sbb dil, al
sub dl, dil
sub al, 26
sub ecx, -107
or dl, dil
sub al, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
