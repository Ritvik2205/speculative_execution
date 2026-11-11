.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
sub al, 11
and dil, -23
xchg al, dl
sbb al, 102
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
cmp bl, dl
sub al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
add sil, dl
test eax, 1947430392
test ax, 19171
cmp rbx, -91
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test dl, bl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
