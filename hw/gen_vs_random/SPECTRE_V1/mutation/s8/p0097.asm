.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
setbe al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
bt rbx, 244
lea rbx, qword ptr [rbx + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
imul edx, ebx
test sil, 97
setle dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -72
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
xor rcx, rsi
test ax, -30637
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
