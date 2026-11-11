.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -2019837038
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
sub rbx, -128
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl esi, edi
cmovno rbx, rax
cmovo edi, ebx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
movsx rsi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
