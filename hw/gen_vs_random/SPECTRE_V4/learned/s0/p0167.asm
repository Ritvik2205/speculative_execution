.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
test dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
test ax, -6841
cmp al, cl
movsx edx, al
xor cl, bl
add al, -82
xchg rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
sub al, cl
mov bl, dil
sub bl, cl
add bl, -59
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
lea ebx, qword ptr [rcx]
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
