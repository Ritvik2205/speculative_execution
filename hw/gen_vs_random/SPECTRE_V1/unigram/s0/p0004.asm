.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
lea bx, qword ptr [rax + rbx + 74]
cmp dx, 78
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and di, 77
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
add cl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnz di, dx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add sil, 88 # instrumentation
sbb sil, 41
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
