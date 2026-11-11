.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 82
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
btr ax, bx
test bl, dl
cmovnbe rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
add bl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
add al, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and dil, -93
add cl, -89 # instrumentation
sbb ecx, edi
bt ebx, eax
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
add ax, 6980
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
