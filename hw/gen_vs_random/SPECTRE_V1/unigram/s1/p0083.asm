.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
lea dx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
or bl, 80
or cl, dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
xor ecx, eax
bt rdx, 75
movsx bx, al
cmp sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
