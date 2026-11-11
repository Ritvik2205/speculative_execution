.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl bx, ax
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
mul al
test eax, eax
sub bl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
btr bx, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
lea rbx, qword ptr [rsi + rbx]
add bl, 77 # instrumentation
sbb ebx, -34
test ax, ax
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
add cl, 40 # instrumentation
cmovbe si, cx
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
