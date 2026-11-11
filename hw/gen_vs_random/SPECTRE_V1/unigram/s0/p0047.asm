.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, -103
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
sub sil, -18
add cl, -127
or ax, 19104
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
mov rdx, rsi
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test sil, -31
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
