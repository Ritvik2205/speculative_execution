.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
lea di, qword ptr [rax + rdi]
and bl, 125
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
add cl, -38 # instrumentation
setbe sil
imul ecx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 29
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
xchg ax, si
add al, -49 # instrumentation
setnb bl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 32
add al, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
