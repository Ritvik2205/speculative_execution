.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
inc bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovns rcx, rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
movsx edx, al
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
cmovnz cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
