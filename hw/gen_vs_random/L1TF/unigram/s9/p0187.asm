.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, al
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 44
btr eax, 47
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
cmovbe ebx, ecx
test dl, al
jmp .bb_0.1
.bb_0.1:
add dl, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
btr si, bx
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
add al, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
cmp dx, 52
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
add dl, 127 # instrumentation
setnbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
