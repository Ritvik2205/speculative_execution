.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
sub dl, al
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
movsx ebx, al
sub dx, -23
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 49
sub dil, sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
