.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto bl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
neg ecx
sub bl, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
or esi, edi
or rcx, 83
sbb bl, -88
bt si, bx
add dil, -110 # instrumentation
btr di, 89
test ax, 636
lea cx, qword ptr [rax + rcx + 53]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
