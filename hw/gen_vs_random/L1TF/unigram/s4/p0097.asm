.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 51
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test dx, 71
cmovnb rdi, rdi
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
add bl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
xor dx, 31
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
